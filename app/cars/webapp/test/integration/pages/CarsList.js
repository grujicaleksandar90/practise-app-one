sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'com.practise.cars',
            componentId: 'CarsList',
            entitySet: 'Cars'
        },
        CustomPageDefinitions
    );
});