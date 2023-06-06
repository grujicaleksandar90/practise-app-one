using CarService as service from '../../srv/cars-service';

annotate service.Cars with @(UI: {
    HeaderInfo                 : {
        TypeName      : 'Car',
        TypeNamePlural: 'Cars',
    },
    SelectionFields            : [
        brand,
        colors
    ],
    LineItem                   : [

        {
            Value: id,
            ![@UI.Hidden]
        },
        {
            $Type: 'UI.DataField',
            Label: 'brand',
            Value: brand,
        },
        {
            $Type: 'UI.DataField',
            Label: 'colors',
            Value: colors,
        },
        {
            $Type: 'UI.DataField',
            Label: 'amountManufactured',
            Value: amountManufactured,
        },
        {
            Value      : impact,
            Criticality: criticality
        },
        {
            Value      : criticality,
            Criticality: criticality
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target: '@UI.DataPoint#rating'
        },
        {
            Value: maker_id,
            ![@UI.Hidden]
        },
    ],
    DataPoint #rating          : {
        Value        : rating,
        Visualization: #Rating,
        TargetValue  : 5
    },
    FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'id',
                Value: id,
            },
            {
                $Type: 'UI.DataField',
                Label: 'brand',
                Value: brand,
            },
            {
                $Type: 'UI.DataField',
                Label: 'colors',
                Value: colors,
            },
            {
                $Type: 'UI.DataField',
                Label: 'amountManufactured',
                Value: amountManufactured,
            },
            {
                $Type: 'UI.DataField',
                Label: 'maker_id',
                Value: maker_id,
            },
        ],
    },
    FieldGroup #GeneratedGroup2: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'brand',
                Value: brand,
            },
            {
                $Type: 'UI.DataField',
                Label: 'colors',
                Value: colors,
            },
            {
                $Type: 'UI.DataField',
                Label: 'amountManufactured',
                Value: amountManufactured,
            }
        ],
    },
    Facets                     : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : 'General Information',
            Target: '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet2',
            Label : 'Overview',
            Target: '@UI.FieldGroup#GeneratedGroup2',
        },
    ]
});
