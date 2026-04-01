# Set Up MCP Servers for Agentic Coding

In this section, you will set up the **CAP MCP server** and the **SAP Fiori MCP server** in Cline running in SAP Business Application Studio, and define rules to guide the AI coding assistant throughout the exercise.

## What Is Agentic Coding?

Agentic coding represents a paradigm shift in software development where AI agents actively participate in the coding process, going beyond simple code generation to become collaborative.

### Key Characteristics of Agentic Coding

1. **Proactive Assistance**: AI agents anticipate developer needs and suggest improvements
2. **Context Awareness**: Understanding of project structure, coding standards, and business requirements
3. **Tool Orchestration**: Ability to coordinate multiple tools and services to accomplish complex tasks
4. **Collaborative Workflow**: Working alongside developers as intelligent pair programming partners

## What Is MCP (Model Context Protocol)?

The [Model Context Protocol (MCP)](https://modelcontextprotocol.io/docs/getting-started/intro) is an open standard that enables seamless communication between AI models and external tools, data sources, and services. It acts as a bridge that allows AI agents to interact with the broader development ecosystem in a structured and secure manner.

### The MCP Server for CAP

The MCP server for CAP transforms AI agents into CAP development experts. It provides context-focused tools that help the AI agent answer questions such as:

- Which CDS services does my project expose and where are they served?
- What are the entities about and how do they relate to each other?
- How do I add columns to a select statement in CAP Node.js?
- How can I register custom READ handlers in CAP Node.js?

Without the MCP server for CAP, the LLM would hallucinate and could invent new syntax or do numerous file searches to find the relevant file. With the MCP server, the LLM generates a tool call to check the entity and relevant information is returned — such as its elements and file location. It also generates a tool call to check the CAP documentation. Based on the results, it generates the correct CDS code.

### SAP Fiori MCP Server

The SAP Fiori MCP server (`@sap-ux/fiori-mcp-server`) enables developers using AI coding assistants to generate and adapt SAP Fiori elements applications with precision and context awareness.

## Prerequisite

You have the [Incident Management application set up in SAP Business Application Studio](../topic2/part1/clone.md).


## Setting Up MCP Servers

To get started, you need to set up the MCP servers for both CAP and SAP Fiori in Cline running in SAP Business Application Studio.

1. Install the MCP servers for CAP and SAP Fiori globally using npm:

    ```bash
    npm install -g @cap-js/mcp-server @sap-ux/fiori-mcp-server
    ```

2. In SAP Business Application Studio, open **Cline** and choose the **MCP Servers** icon in the Cline panel.

3. Choose **Edit MCP Settings** to open the Cline MCP configuration and add the following entries:

    ```json
    {
    "mcpServers": {
        "cds-mcp": {
        "autoApprove": [
            "search_model",
            "search_docs"
        ],
        "disabled": false,
        "timeout": 60,
        "type": "stdio",
        "command": "/home/user/.asdf-inst/installs/nodejs/22.13.1/bin/node",
        "args": [
            "/home/user/.node_modules_global/bin/cds-mcp"
        ],
        "env": {
            "ASDF_DIR": "/home/user/.asdf",
            "ASDF_DATA_DIR": "/home/user/.asdf-inst",
            "PATH": "/home/user/.asdf-inst/installs/nodejs/22.13.1/bin:/home/user/.node_modules_global/bin:/home/user/.local/bin:/usr/local/bin:/usr/bin:/bin"
        }
        },
        "fiori-mcp": {
        "autoApprove": [
            "list_functionality",
            "execute_functionality",
            "get_functionality_details",
            "generate-fiori-ui-app",
            "list_fiori_apps",
            "search_docs"
        ],
        "timeout": 600,
        "type": "stdio",
        "command": "/home/user/.asdf-inst/installs/nodejs/22.13.1/bin/npx",
        "args": [
            "--yes",
            "@sap-ux/fiori-mcp-server@latest",
            "fiori-mcp"
        ],
        "env": {
            "ASDF_DIR": "/home/user/.asdf",
            "ASDF_DATA_DIR": "/home/user/.asdf-inst",
            "PATH": "/home/user/.asdf-inst/installs/nodejs/22.13.1/bin:/home/user/.node_modules_global/bin:/home/user/.local/bin:/usr/local/bin:/usr/bin:/bin"
        }
        }
    }
    }
    ```

4. Save the settings. The MCP servers will appear as connected in the Cline MCP Servers panel.

5. Test the MCP server setup by asking Cline to list all entities in your CAP project:

    ```
    cds-mcp list the entities of this project
    ```

6. You can also ask Cline to list all Fiori apps in your project:

    ```
    fiori-mcp list the fiori apps of this project
    ```

## Define Rules for the MCP Servers (AGENTS.md)

To maximize the effectiveness of MCP servers in your development workflow, define rules in an `AGENTS.md` file in the root of your project. This helps ensure that Cline leverages the MCP servers appropriately.

Create `AGENTS.md` in the root of your project with the following content:

```markdown
# AGENTS.md

## Rules for cds-mcp
- You MUST search for CDS definitions, like entities, fields and services (which include HTTP endpoints) with cds-mcp, only if it fails you MAY read *.cds files in the project.
- You MUST search for CAP docs with cds-mcp EVERY TIME you create, modify CDS models or when using APIs or the `cds` CLI from CAP. Do NOT propose, suggest or make any changes without first checking it.

## Rules for creation or modification of SAP Fiori elements apps
- When asked to create an SAP Fiori elements app check whether the user input can be interpreted as an application organized into one or more pages containing table data or forms, these can be translated into a SAP Fiori elements application, else ask the user for suitable input.
- The application typically starts with a List Report page showing the data of the base entity of the application in a table. Details of a specific table row are shown in the ObjectPage.
- Each property of an entity must have a proper datatype.
- For all entities in the data model provide primary keys of type UUID.
- When creating sample data in CSV files, all primary keys and foreign keys MUST be in UUID format.
- When generating or modifying the SAP Fiori elements application on top of the CAP service use the Fiori MCP server if available.
- When attempting to modify the SAP Fiori elements application like adding columns you must not use the screen personalization but instead modify the code of the project, before this first check whether an MCP server provides a suitable function.
- When previewing the SAP Fiori elements application use the most specific script for the app in the `package.json`.
```

> [!Tip]
> `AGENTS.md` complements `README.md` by containing the extra context coding agents need: build steps, tests, and conventions that might clutter a README or aren't relevant to human contributors.

## Next Step

[Add Resolution Note — Field, Business Logic & Tests](add-resolution-note.md)