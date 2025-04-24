## Enhance Fiori UI

## Prerequisites

Added services required for SAP AI SDK by following [Add Services of SAP AI SDK](./add-service-ai-core.md)

## Add Annotations to enhance the Fiori UI

1. Open `app/incidents/annotation.cds` file and paste the below code

```cds
using ProcessorService as service from '../../srv/services';
using from '../../db/schema';

annotate service.Incidents with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Customer}',
                Value : customer_ID,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.CollectionFacet',
            Label : '{i18n>Overview}',
            ID : 'i18nOverview',
            Facets : [
                {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : '{i18n>GeneralInformation}',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : '{i18n>Details}',
                    ID : 'i18nDetails',
                    Target : '@UI.FieldGroup#i18nDetails',
                },],
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Conversation}',
            ID : 'i18nConversations',
            Target : 'conversation/@UI.LineItem#i18nConversations',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Recommended Solutions',
            ID : 'RecommendedSolutions',
            Target : 'solutions/@UI.LineItem#RecommendedSolutions',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : title,
            Label : '{i18n>Title}',
        },
        {
            $Type : 'UI.DataField',
            Value : customer.name,
            Label : '{i18n>Customer}',
        },
        {
            $Type : 'UI.DataField',
            Value : status.descr,
            Label : '{i18n>Status}',
            Criticality : status.criticality,
        },
        {
            $Type : 'UI.DataField',
            Value : urgency.descr,
            Label : '{i18n>Urgency}',
        },
          
         
    ],
    // UI.FieldGroup #Solutions : {
    //     $Type : 'UI.FieldGroupType',
    //     Data : [
    //     ],
    // },
    // UI.FieldGroup #Solutions1 : {
    //     $Type : 'UI.FieldGroupType',
    //     Data : [
    //         {
    //             $Type : 'UI.DataField',
    //             Value : solutions,
    //             Label : 'solutions',
    //         },
    //     ],
    // },
);

annotate service.Incidents with {
    customer @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Customers',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : customer_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'firstName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'lastName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'email',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'phone',
            },
        ],
    }
};

annotate service.Incidents with @(
    UI.SelectionFields : [
        status_code,
        urgency_code,
    ]
);
annotate service.Incidents with {
    status @Common.Label : '{i18n>Status}'
};
annotate service.Incidents with {
    urgency @Common.Label : '{i18n>Urgency}'
};
annotate service.Incidents with {
    urgency @Common.ValueListWithFixedValues : true
};
annotate service.Urgency with {
    code @Common.Text : descr
};
annotate service.Incidents with {
    status @Common.ValueListWithFixedValues : true
};
annotate service.Status with {
    code @Common.Text : descr
};
annotate service.Incidents with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : title,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : customer.name,
        },
        TypeImageUrl : 'sap-icon://alert',
    },
     UI.Identification: [
        {
            $Type: 'UI.DataFieldForAction',
            Action: 'ProcessorService.acceptsolution',
            Label: 'Accept Solution'
        },
 
    ],
    
);
annotate service.Incidents with @(
    UI.FieldGroup #i18nDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : status_code,
            },{
                $Type : 'UI.DataField',
                Value : urgency_code,
            },],
    }
);
annotate service.Incidents with {
    customer @Common.Text : {
            $value : customer.name,
            ![@UI.TextArrangement] : #TextOnly,
        }
};
annotate service.Incidents with {
    customer @Common.ValueListWithFixedValues : false
};
// annotate service.Incidents with {
//     status @Common.Text : status.descr
// };
// annotate service.Incidents with @(
//     UI.HeaderInfo: { TypeName: 'Incident', TypeNamePlural: 'Incidents' },
//     UI.Identification: [
//         {
//             $Type: 'UI.DataFieldForAction',
//             Action: 'ProcessorService.getSuggestedSolutions',
//             Label: 'Get Suggested Solutions'
//         }
//     ]
// );
// annotate service.Incidents with @(
//   UI: {
//     LineItem: [
//       {
//         $Type: 'UI.DataFieldForAction',
//         Action: 'ProcessorService.getSuggestedSolutions',
//         Label: 'Get Suggested Solutions'
//       }
//     ]
//   }
// );
annotate service.Incidents with {
    urgency @Common.Text : urgency.descr
};
annotate service.Incidents.conversation with @(
    UI.LineItem #i18nConversations : [
        {
            $Type : 'UI.DataField',
            Value : author,
            Label : '{i18n>Author}',
        },{
            $Type : 'UI.DataField',
            Value : message,
            Label : '{i18n>Message}',
        },{
            $Type : 'UI.DataField',
            Value : timestamp,
            Label : '{i18n>Date}',
        },]
);
annotate service.Incidents with @Common.SemanticKey: [ID]{
    ID @Core.Computed
};
annotate service.Incidents.solutions with @(
    UI.LineItem #RecommendedSolutions : [
          {
            $Type : 'UI.DataField',
            Value : solution,
            Label : 'Solution',
        }, 
        {
            $Type : 'UI.DataField',
            Value : confidence,
            Label : 'Confidence Score',
        },
      
    ]
);

```

## Next Step

[Add Default environment for local testing](./add-default-env.md)