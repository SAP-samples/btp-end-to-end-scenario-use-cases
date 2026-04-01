# Understanding the Incident Management Application Structure

## Overview

The Incident Management application is a full-stack SAP BTP application built using the SAP Cloud Application Programming Model (CAP). It serves as a support ticket system where call center representatives can manage customer incidents with different urgency levels and statuses.

## Business Scenario

**ACME Electronics** uses this application to manage customer support incidents:
- Call center support representatives (Processors) receive customer calls
- They create new incidents on behalf of customers
- Incidents are tracked through various statuses from creation to resolution
- Conversation history is maintained for each incident
- Business rules enforce data integrity and workflow constraints

# Solution Diagram

![Solution Diagram](./../images/Solution-Diagram.png)

## Project Structure

```
incidents-app/
├── package.json              # Project configuration and dependencies
├── mta.yaml                 # Multi-target application descriptor
├── xs-security.json         # Security configuration
├── db/                      # Database layer
│   ├── schema.cds          # Data model definitions
│   ├── data/               # Sample data (CSV files)
│   └── src/                # Database artifacts
├── srv/                     # Service layer
│   ├── services.cds        # Service definitions
│   └── services.js         # Service implementation (business logic)
├── app/                     # UI layer
│   ├── services.cds        # UI service bindings
│   ├── launchpage.html     # Application launchpad
│   └── incidents/          # Fiori Elements app
│       ├── annotations.cds # UI annotations
│       ├── webapp/         # UI5 application
│       └── package.json    # UI app configuration
└── tests/                   # Test suite
    └── test.js             # Jest-based API tests
```

## Data Model (Database Layer)

### Core Entities

#### 1. Incidents Entity
The main entity representing support tickets:

```cds
entity Incidents : cuid, managed {  
    customer       : Association to Customers;
    title          : String  @title : 'Title';
    urgency        : Association to Urgency default 'M';
    status         : Association to Status default 'N';
    resolutionNote : String  @title : 'Resolution Note';
    conversation   : Composition of many {
        key ID    : UUID;
        timestamp : type of managed:createdAt;
        author    : type of managed:createdBy;
        message   : String;
    };
}
```

**Key Features:**
- **CUID**: Universally unique identifier
- **Managed**: Automatic audit fields (createdAt, createdBy, modifiedAt, modifiedBy)
- **Associations**: Links to Customer, Status, and Urgency entities
- **Composition**: Embedded conversation history
- **Resolution Note**: Field for documenting incident resolution

#### 2. Customers Entity
Represents customers who can create incidents:

```cds
entity Customers : managed { 
    key ID        : String;
    firstName     : String;
    lastName      : String;
    name          : String = firstName ||' '|| lastName;  // Calculated field
    email         : EMailAddress;
    phone         : PhoneNumber;
    incidents     : Association to many Incidents on incidents.customer = $self;
    creditCardNo  : String(16) @assert.format: '^[1-9]\d{15}$';  // Validation
    addresses     : Composition of many Addresses on addresses.customer = $self;
}
```

**Key Features:**
- **Calculated Fields**: Full name derived from first and last name
- **Validation**: Credit card format validation using regex
- **Associations**: One-to-many relationship with incidents
- **Composition**: Embedded addresses

#### 3. Code List Entities

**Status Entity:**
```cds
entity Status : CodeList {
    key code: String enum {
        new = 'N';           // New incident
        assigned = 'A';      // Assigned to processor
        in_process = 'I';    // Being worked on
        on_hold = 'H';       // Temporarily paused
        resolved = 'R';      // Solution provided
        closed = 'C';        // Incident closed
    };
    criticality : Integer;   // For UI color coding
}
```

**Urgency Entity:**
```cds
entity Urgency : CodeList {
    key code: String enum {
        high = 'H';          // High priority
        medium = 'M';        // Medium priority (default)
        low = 'L';           // Low priority
    };
}
```

## Service Layer

### ProcessorService
Primary service for support staff:

```cds
service ProcessorService {
    entity Incidents as projection on my.Incidents;
    @readonly
    entity Customers as projection on my.Customers;
}

annotate ProcessorService.Incidents with @odata.draft.enabled;
annotate ProcessorService with @(requires: 'support');
```

**Key Features:**
- **Draft Support**: Enables draft mode for incident editing
- **Authorization**: Requires 'support' role
- **Read-only Customers**: Processors can view but not modify customer data

### AdminService
Administrative service for system administrators:

```cds
service AdminService {
    entity Customers as projection on my.Customers;
    entity Incidents as projection on my.Incidents;
}

annotate AdminService with @(requires: 'admin');
```

**Key Features:**
- **Full Access**: Complete CRUD operations on all entities
- **Authorization**: Requires 'admin' role

### Business Logic Implementation

The service implementation (`services.js`) contains custom business rules:

#### 1. Automatic Urgency Assignment
```javascript
changeUrgencyDueToSubject(data) {
    if (data) {
        const incidents = Array.isArray(data) ? data : [data];
        incidents.forEach((incident) => {
            if (incident.title?.toLowerCase().includes("urgent")) {
                incident.urgency = { code: "H", descr: "High" };
            }
        });
    }
}
```

#### 2. Closed Incident Protection
```javascript
async onUpdate (req) {
    const { status_code } = await SELECT.one(req.subject, i => i.status_code).where({ID: req.data.ID})
    if (status_code === 'C')
        return req.reject(`Can't modify a closed incident`)
}
```

## UI Layer (Fiori Elements)

### Application Structure
The UI is built using SAP Fiori Elements, providing:
- **List Report**: Overview of all incidents with filtering and sorting
- **Object Page**: Detailed view of individual incidents
- **Draft Mode**: Allows editing with save/discard functionality

### UI Annotations
The `annotations.cds` file defines the UI structure:

#### List Report Configuration
```cds
UI.LineItem : [
    { $Type : 'UI.DataField', Value : ID, Label : '{i18n>Title}' },
    { $Type : 'UI.DataField', Label : '{i18n>Customer}', Value : customer_ID },
    { $Type : 'UI.DataField', Label : 'Status', Value : status_code, Criticality : status.criticality },
    { $Type : 'UI.DataField', Label : '{i18n>Urgency}', Value : urgency_code }
]
```

#### Object Page Layout
```cds
UI.Facets : [
    {
        $Type : 'UI.CollectionFacet',
        Label : '{i18n>Overview}',
        Facets : [
            { $Type : 'UI.ReferenceFacet', Label : '{i18n>GeneralInformation}', Target : '@UI.FieldGroup#GeneratedGroup' },
            { $Type : 'UI.ReferenceFacet', Label : '{i18n>Details}', Target : '@UI.FieldGroup#i18nDetails' }
        ]
    },
    { $Type : 'UI.ReferenceFacet', Label : '{i18n>Conversation}', Target : 'conversation/@UI.LineItem#i18nConversation' }
]
```

### Value Help Configuration
Customer selection with value help:
```cds
customer @(
    Common.ValueList : {
        CollectionPath : 'Customers',
        Parameters : [
            { $Type : 'Common.ValueListParameterInOut', LocalDataProperty : customer_ID, ValueListProperty : 'ID' },
            { $Type : 'Common.ValueListParameterDisplayOnly', ValueListProperty : 'name' },
            { $Type : 'Common.ValueListParameterDisplayOnly', ValueListProperty : 'email' }
        ]
    }
)
```

## Testing Strategy

### Test Structure
The application includes comprehensive Jest-based tests (`tests/test.js`):

#### 1. Entity Tests
- Verify data retrieval from ProcessorService
- Check entity relationships and data integrity
- Test OData expand operations

#### 2. Draft Choreography Tests
- Create incident drafts
- Test draft activation
- Verify business logic execution
- Test draft deletion

#### 3. Business Logic Tests
- Automatic urgency assignment based on title
- Closed incident modification prevention
- Status transition validation

### Sample Test Case
```javascript
it('+ Activate the draft & check Urgency code as H using custom logic', async () => {
    const response = await POST(
        `/odata/v4/processor/Incidents(ID=${draftId},IsActiveEntity=false)/ProcessorService.draftActivate`
    )
    expect(response.status).to.eql(201)
    expect(response.data.urgency_code).to.eql('H')  // Validates business rule
})
```

## Configuration and Dependencies

### Key Dependencies
```json
{
    "@sap/cds": "^9",           // CAP framework
    "express": "^4",            // Web server
    "@cap-js/hana": "^2",       // HANA database support
    "@sap/xssec": "^4",         // Security library
    "@cap-js/sqlite": "^2"      // SQLite for development
}
```

### Environment Configuration
```json
"cds": {
    "requires": {
        "[development]": {
            "auth": { "kind": "mocked" }  // Mock authentication for development
        },
        "[production]": {
            "db": "hana",                 // HANA database in production
            "auth": "xsuaa"               // XSUAA authentication
        }
    }
}
```

## Security Model

### Role-Based Access Control
- **Support Role**: Access to ProcessorService for incident management
- **Admin Role**: Full access to AdminService for system administration
- **Mock Users**: Alice and Bob with support roles for development

### Authentication
- **Development**: Mocked authentication with predefined users
- **Production**: XSUAA-based authentication with proper user management

## Deployment Architecture

### Multi-Target Application (MTA)
The `mta.yaml` file defines:
- **Database Module**: Schema deployment to HANA
- **Service Module**: CAP application deployment
- **UI Module**: Fiori application deployment
- **Approuter**: Routing and authentication

### Cloud Foundry Services
- **HANA Database**: Persistent data storage
- **XSUAA**: Authentication and authorization
- **Destination Service**: External service connectivity
- **HTML5 Runtime**: UI application hosting

## Extension Points

The application is designed for extensibility:

### 1. Data Model Extensions
- Add new fields to existing entities
- Create new entities with relationships
- Extend code lists with additional values

### 2. Service Extensions
- Add new service operations
- Implement additional business logic
- Create specialized views or projections

### 3. UI Extensions
- Add new fields to forms
- Create custom actions and buttons
- Implement additional facets and sections

### 4. Integration Extensions
- Connect to external systems via destinations
- Implement event-driven architectures
- Add workflow integration

## Best Practices Implemented

### 1. Data Modeling
- Use of managed aspects for audit trails
- Proper association and composition relationships
- Input validation with assertions
- Calculated fields for derived data

### 2. Service Design
- Clear separation of concerns between services
- Proper authorization annotations
- Draft enablement for complex editing scenarios
- Read-only projections where appropriate

### 3. UI Design
- Consistent use of i18n for internationalization
- Proper field grouping and facet organization
- Value help for complex selections
- Criticality indicators for status visualization

### 4. Testing
- Comprehensive API testing
- Draft choreography validation
- Business logic verification
- Error scenario testing

This incident management application demonstrates modern SAP BTP development practices using CAP, providing a solid foundation for enterprise-grade support ticket management systems.


[Next Tutorial: Update the Business Scenario](./add-remote-service/README.md)