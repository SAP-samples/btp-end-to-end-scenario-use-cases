"use strict";

// Include cds libraries and reuse files
const cds = require("@sap/cds");

// ----------------------------------------------------------------------------
// S4HC specific reuse functions
// ----------------------------------------------------------------------------

// Delegate OData requests to remote S4HC project entities
async function delegateODataRequests(req,remoteService) {
    try{
        const s4hcProject = await cds.connect.to(remoteService);
        return s4hcProject.run(req.query);
    }catch (error) {
        console.log(error);
    }
}

// Return json-payload to create S4HC projects 
async function projectDataRecord(authorReadingIdentifier, authorReadingTitle, authorReadingDate) {
    try{
        // Set project ID with pattern PRA-{{author reading identifier}}
        var generatedID = "PRA-" + authorReadingIdentifier;
        var generatedPLANID = generatedID + "-PLAN";
        var generatedEXEID = generatedID + "-EXE";

        // Set project start date 30 days before author reading date
        var moment = require("moment");
        var generatedStartDate      = moment(authorReadingDate).subtract(30, "days").toISOString().substring(0, 10) + "T00:00:00.0000000Z";
        var generatedEndDate        = moment(authorReadingDate).toISOString().substring(0, 10) + "T00:00:00.0000000Z";
        var generatedTask1EndDate   = moment(authorReadingDate).subtract(4, "days").toISOString().substring(0, 10) + "T00:00:00.0000000Z";
        var generatedTask2StartDate = moment(authorReadingDate).subtract(1, "days").toISOString().substring(0, 10) + "T00:00:00.0000000Z";
        
        // Assemble project payload
        const projectRecord = {
            "Project": generatedID,
            "ProjectDescription": authorReadingTitle,
            "ProjectStartDate": generatedStartDate,
            "ProjectEndDate": generatedEndDate,
            "EntProjectIsConfidential": false,
            "ResponsibleCostCenter": "10101601",
            "ProfitCenter": "YB900",
            "ProjectProfileCode": "YP03",
            "ProjectCurrency": "EUR",
            "to_EnterpriseProjectElement": [
                {
                    "ProjectElement": generatedPLANID,
                    "ProjectElementDescription": "Event planning and preparations",
                    "PlannedStartDate": generatedStartDate,
                    "PlannedEndDate": generatedTask1EndDate
                },
                {
                    "ProjectElement": generatedEXEID,
                    "ProjectElementDescription": "Event administration and execution",
                    "PlannedStartDate": generatedTask2StartDate,
                    "PlannedEndDate": generatedEndDate
                }
            ]
        };
        return projectRecord;
    }catch (error) {
        console.log(error);
    }
}

// Expand author readings to remote projects
async function readProject(authorReadings) {
    try {     
        const s4hcProject = await cds.connect.to('S4HC_API_ENTERPRISE_PROJECT_SRV_0002');
        const s4hcProjectsProjectProfileCode = await cds.connect.to('S4HC_ENTPROJECTPROFILECODE_0001');
        const s4hcProjectsProcessingStatus = await cds.connect.to('S4HC_ENTPROJECTPROCESSINGSTATUS_0001');
        let isProjectIDs = false;
        const asArray = x => Array.isArray(x) ? x : [ x ];

        // Read Project ID's related to S4HC
        let projectIDs = []; 
        for (const authorReading of asArray(authorReadings)) {
            // Check if the Project ID exists in the author reading record AND backend ERP is S4HC => then read project information from S4HC
            if(authorReading.projectSystem == "S4HC" && authorReading.projectID ){               
                projectIDs.push(authorReading.projectID);
                isProjectIDs = true;
            }
        }
        
        // Read S4HC projects data
        if(isProjectIDs){

            // Request all associated projects        
            const projects = await s4hcProject.run( SELECT.from('AuthorReadingManager.S4HCProjects').where({ Project: projectIDs }) );

            // Convert in a map for easier lookup
            const projectsMap = {};
            for (const project of projects) projectsMap[project.Project] = project;

            // Assemble result
            for (const authorReading of asArray(authorReadings)) {
                authorReading.toS4HCProject = projectsMap[authorReading.projectID];

                IF (authorReading.toS4HCProject) {
                    // Get Project Profile Code Text from S4HC 
                    var projectProfileCode = authorReading.toS4HCProject.ProjectProfileCode;
                    const S4HCProjectsProjectProfileCodeRecords = await s4hcProjectsProjectProfileCode.run( SELECT.from('AuthorReadingManager.S4HCProjectsProjectProfileCode').where({ ProjectProfileCode: projectProfileCode }) );
                    for (const S4HCProjectsProjectProfileCodeRecord of S4HCProjectsProjectProfileCodeRecords) {
                        authorReading.projectProfileCodeText = S4HCProjectsProjectProfileCodeRecord.ProjectProfileCodeText;
                    }
    
                    // Get Project Processing Status Text from S4HC 
                    var processingStatus = authorReading.toS4HCProject.ProcessingStatus;;
                    const S4HCProjectsProcessingStatusRecords = await s4hcProjectsProcessingStatus.run( SELECT.from('AuthorReadingManager.S4HCProjectsProcessingStatus').where({ ProcessingStatus: processingStatus }) );
                    for (const S4HCProjectsProcessingStatusRecord of S4HCProjectsProcessingStatusRecords) {
                        authorReading.processingStatusText = S4HCProjectsProcessingStatusRecord.ProcessingStatusText;
                    }
                }
            };
        }
        return authorReadings;    
    } catch (error) {
        // App reacts error tolerant in case of calling the remote service, mostly if the remote service is not available of if the destination is missing
        console.log("ACTION_READ_PROJECT_CONNECTION" + "; " + error);
    };
}

// Publish constants and functions
module.exports = {
    readProject,
    projectDataRecord,
    delegateODataRequests
  };
