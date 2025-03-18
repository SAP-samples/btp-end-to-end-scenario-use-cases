# Clean Core Development with SAP BTP and Developer Extensibility in SAP S/4HANA Cloud

## Partner Reference Application

The content of this workshop is based on [Partner Reference Application](https://github.com/SAP-samples/sme-partner-reference-application/). The Partner Reference Application provides a "golden path" to build, run and integrate full-stack cloud applications on the SAP Business Technology Platform.

With this sample application we want to provide guidance for SAP partners to extend SAP ERP solutions by side-by-side cloud applications running on the SAP Business Technology Platform (BTP) in a scalable model. This guidance comprises:
- an opinionated selection of BTP components with architecture guidance,
- best practices ("golden paths") to build, deploy and provision full-stack BTP applications, and
- we pay special attention to the interoperability and integration with SAP cloud solutions such as S/4HANA Cloud, Cloud for Projects and SAP Business ByDesign.

The [repository](https://github.com/SAP-samples/sme-partner-reference-application/) includes a sample application that is ready to deploy and run, and tutorials to re-build the sample application from scratch following an incremental development approach from one-off to multi-consumer solutions.

![Incremental approach](https://github.com/SAP-samples/sme-partner-reference-application/raw/main/Tutorials/images/readme_incremental-approach.jpg)

During the workshop you will work with a slightly adapted version of the sample repository which emphasize the simplicity of consuming the APIs developed with SAP Developer Extensibility approach.

## Scenario

Assume you are an event manager and your job is to organize and run author readings and poetry slams for reading clubs, book fairs and other occasions.

Your company is running its business on an cloud ERP system provided by SAP and you mostly use the project management work center to plan and staff events, to collect costs and to purchase required equipment. Additionally an SAP partner provided a side-by-side application named "Author Reading Management" to publish author reading events and to register event participants and visitors.

It was in particular important for you to separate the event publishing and participant registration from your ERP system for security and compliance reasons. Nevertheless, as a power user working in both systems you asked the partner to ensure a seamless user experience and navigation between the SAP system and the partner application.

![Sample use case](https://github.com/SAP-samples/sme-partner-reference-application/raw/main/Tutorials/images/readme_sample-use-case.jpg)

## Prerequisites

The application is based on the SAP Business Technology Platform (BTP) and integrated with SAP Cloud ERP Solutions. Therefore you need access to the following SAP solutions:

- SAP Business Technology Platform (BTP) account for test, demo and development (TDD account) or a BTP account for productive use,
- SAP S/4HANA Cloud, public edition

We are using the Business Application Studio as standardized development environment and Github as code repository.

Later you will create a tailored API using SAP Developer Extensibility. To do that you need an access to SAP S/4HANA Cloud as a developer and have [ABAP Development Tools](https://tools.eu1.hana.ondemand.com/#abap) installed.

## Exercises

### CAP Application with S/4HANA Standard API Integration

1. [Clone and adjust the codebase of the CAP Application](./part1/clone.md)
2. [Deploy the application](./part1/deploy.md)
3. [Scenario implementation overview](./part1/overview.md)
4. [Manage authorization](./part1/authorization.md)
5. [Explore the features of the application](./part1/explore.md)

### SAP Developer Extensibility

1. [Motivation](./part2/motivation.md)
2. [Explore Business Object Projection](./part2/bo-projection.md)
3. [Connect to the system](./part2/adt.md)
4. [Create package](./part2/package.md)
5. [Create data definitions](./part2/data-definitions.md)
6. [Create behavior definition](./part2/behavior-definition.md)
7. [Expose an OData service](./part2/expose.md)
8. [Create communication scenario](./part2/scenario.md)
9. [Create communication arrangement](./part2/arrangement.md)
10. [OPTIONAL: Test the API](./part2/test.md)

### Adjusting CAP Application for own API Integration

1. [Import metadata](./part3/metadata.md)
2. [Adjust code of the CAP application](./part3/adjust.md)
3. [Test the new app](./part3/test.md)
4. [Integrate the application in SAP Build Workzone and SAP Mobile Start](./part3/workzone.md)

## System Preparation

This section is not a part of the workshop exercises. Here you will learn how to prepare your systems for this workshop.

1. [Bill of Materials](./system-preparation/bom.md)
2. [Prepare SAP BTP Subaccount](./system-preparation/btp.md)
3. [Prepare S/4HANA Cloud system Public Edition](./system-preparation/s4hana.md)
4. [Integrate S/4HANA Cloud system with SAP BTP](./system-preparation/integration.md)

## Troubleshooting

Please check [known issues](./troubleshooting.md) if you stuck with some exercises.
