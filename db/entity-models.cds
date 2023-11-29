namespace sap.samples.authorreadings;

using {
    sap,
    managed,
    cuid,
    Currency
} from '@sap/cds/common';

// Author readings
entity AuthorReadings : managed, cuid {
    identifier              : String;
    title                   : localized String(100);
    description             : localized String(500);
    date                    : DateTime;
    maxParticipantsNumber   : Integer;
    availableFreeSlots      : Integer;
    participantsFeeAmount   : Decimal(6,2);
    currency                : Association to one sap.common.Currencies;
    statusCode              : Association to one AuthorReadingStatusCodes;
    participants            : Composition of many Participants on participants.parent = $self;
    projectID               : String;
    projectObjectID         : String;
    projectURL              : String;
    projectSystem           : String;
    eventMeshMessage        : String;
}

// Participants (sub-node of AuthorReadings)
entity Participants : managed, cuid {
    parent       : Association to AuthorReadings;
    identifier   : String;
    name         : String;
    email        : String;
    mobileNumber : String;
    statusCode   : Association to one ParticipantStatusCodes;
}

// Author reading status codes
entity AuthorReadingStatusCodes : sap.common.CodeList {
        @Common.Text : {
            $value                 : descr,
            ![@UI.TextArrangement] : #TextOnly
        }
    key code : Integer default 0
}

// Participant status codes
entity ParticipantStatusCodes : sap.common.CodeList {
        @Common.Text : {
            $value                 : descr,
            ![@UI.TextArrangement] : #TextOnly
        }
    key code : Integer default 1
}

annotate AuthorReadings with @fiori.draft.enabled {
    ID                      @title : '{i18n>uuid}'                  @Core.Computed;
    identifier              @title : '{i18n>identifier}'            @mandatory;
    title                   @title : '{i18n>title}'                 @mandatory;
    description             @title : '{i18n>description}';
    date                    @title : '{i18n>date}'                  @mandatory;
    maxParticipantsNumber   @title : '{i18n>maxParticipantsNumber}' @mandatory;
    availableFreeSlots      @title : '{i18n>availableFreeSlots}'    @readonly;
    participantsFeeAmount   @title : '{i18n>participantsFeeAmount}' @Measures.ISOCurrency: currency_code;
    currency                @title : '{i18n>currency}';
    statusCode              @title : '{i18n>statusCode}'            @readonly;
    projectID               @title : '{i18n>projectID}';
    projectObjectID         @title : '{i18n>projectObjectID}';
    projectURL              @title : '{i18n>projectURL}';
    projectSystem           @title : '{i18n>projectSystem}';
    eventMeshMessage        @title : '{i18n>eventMeshMessage}';
}

annotate Participants with {
    ID                      @title : '{i18n>uuid}'                  @Core.Computed;
    parent                  @title : '{i18n>authorReadingUUID}';
    identifier              @title : '{i18n>identifier}'            @mandatory;
    name                    @title : '{i18n>name}'                  @mandatory;
    email                   @title : '{i18n>email}';
    mobileNumber            @title : '{i18n>mobileNumber}';
    statusCode              @title : '{i18n>statusCode}'            @readonly;
}

annotate AuthorReadingStatusCodes with {
    code                    @title : '{i18n>codeListStatusCode}';
    descr                   @title : '{i18n>codeListStatusText}'
}

annotate ParticipantStatusCodes with {
    code                    @title : '{i18n>codeListStatusCode}';
    descr                   @title : '{i18n>codeListStatusText}'
}
