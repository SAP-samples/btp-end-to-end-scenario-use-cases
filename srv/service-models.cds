using {sap.samples.authorreadings as armodels} from '../db/entity-models';
using sap from '@sap/cds/common';

// ----------------------------------------------------------------------------
// Service for "author reading managers"

service AuthorReadingManager @(
    path : 'authorreadingmanager',
    impl : './service-implementation.js'
) {

    // ----------------------------------------------------------------------------
    // Entity inclusions

    // Currencies
    entity Currencies     as projection on sap.common.Currencies;

    // Author readings (combined with remote project using mixin)
    @odata.draft.enabled
    entity AuthorReadings as select from armodels.AuthorReadings
        mixin {
            // S4HC projects: Mix-in of S4HC project data
            toS4HCProject: Association to RemoteS4HCProject.A_EnterpriseProject on toS4HCProject.Project = $projection.projectID
        } 
        into  {
            *,
            virtual null as statusCriticality    : Integer @title : '{i18n>statusCriticality}',
            virtual null as projectSystemName    : String  @title : '{i18n>projectSystemName}' @odata.Type : 'Edm.String',

            // S4HC projects: visibility of button "Create project in S4HC", code texts
            virtual null as createS4HCProjectEnabled : Boolean  @title : '{i18n>createS4HCProjectEnabled}'  @odata.Type : 'Edm.Boolean',
            toS4HCProject,
            virtual null as projectProfileCodeText : String @title : '{i18n>projectProfile}' @odata.Type : 'Edm.String',
            virtual null as processingStatusText   : String @title : '{i18n>processingStatus}' @odata.Type : 'Edm.String',

        }
        actions {

            // Action: Block
            @(
                Common.SideEffects              : {TargetEntities : ['_authorreading']},
                cds.odata.bindingparameter.name : '_authorreading'
            )
            action block()   returns AuthorReadings;

            // Action: Publish
            @(
                Common.SideEffects              : {TargetEntities : ['_authorreading']},
                cds.odata.bindingparameter.name : '_authorreading'
            )
            action publish() returns AuthorReadings;

            // S4HC projects: action to create a project in S4HC
            @(
                Common.SideEffects              : {TargetEntities: ['_authorreading','_authorreading/toS4HCProject']},
                cds.odata.bindingparameter.name : '_authorreading'
            )
            action createS4HCProject() returns AuthorReadings;
        };

    // Participants
    entity Participants as projection on armodels.Participants {
        *,
        virtual null as statusCriticality : Integer @title : '{i18n>statusCriticality}',
    } actions {

        // Action: Cancel Participation
        @(
            Common.SideEffects              : {TargetEntities : [
                '_participant',
                '_participant/parent'
            ]},
            cds.odata.bindingparameter.name : '_participant'
        )
        action cancelParticipation()  returns Participants;

        // Action: Confirm Participation
        @(
            Common.SideEffects              : {TargetEntities : [
                '_participant',
                '_participant/parent'
            ]},
            cds.odata.bindingparameter.name : '_participant'
        )
        action confirmParticipation() returns Participants;
    };

    // ----------------------------------------------------------------------------
    // Function to get user information (example for entity-independend function)

    type userRoles {
        identified    : Boolean;
        authenticated : Boolean;
    };

    type user {
        user   : String;
        locale : String;
        roles  : userRoles
    };

    function userInfo() returns user;   
};


// -------------------------------------------------------------------------------
// Extend service AuthorReadingManager by S/4HANA Projects

using { S4HC_API_ENTERPRISE_PROJECT_SRV_0002 as RemoteS4HCProject } from './external/S4HC_API_ENTERPRISE_PROJECT_SRV_0002';
extend service AuthorReadingManager with {
    entity S4HCProjects as projection on RemoteS4HCProject.A_EnterpriseProject
    entity S4HCEnterpriseProjectElement as projection on RemoteS4HCProject.A_EnterpriseProjectElement
};

// Extend service AuthorReadingManager by S4HC Projects ProjectProfileCode
using { S4HC_ENTPROJECTPROCESSINGSTATUS_0001 as RemoteS4HCProjectProcessingStatus } from './external/S4HC_ENTPROJECTPROCESSINGSTATUS_0001';
extend service AuthorReadingManager with {
    entity S4HCProjectsProcessingStatus as projection on RemoteS4HCProjectProcessingStatus.ProcessingStatus {
        key ProcessingStatus,
        ProcessingStatusText
    }
};

// Extend service AuthorReadingManager by S4HC Projects ProcessingStatus
using { S4HC_ENTPROJECTPROFILECODE_0001 as RemoteS4HCProjectProjectProfileCode } from './external/S4HC_ENTPROJECTPROFILECODE_0001';
extend service AuthorReadingManager with {
    entity S4HCProjectsProjectProfileCode as projection on RemoteS4HCProjectProjectProfileCode.ProjectProfileCode {
        key ProjectProfileCode,
        ProjectProfileCodeText
    }
};