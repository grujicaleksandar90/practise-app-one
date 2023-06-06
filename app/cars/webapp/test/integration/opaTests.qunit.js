sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/practise/cars/test/integration/FirstJourney',
		'com/practise/cars/test/integration/pages/CarsList',
		'com/practise/cars/test/integration/pages/CarsObjectPage'
    ],
    function(JourneyRunner, opaJourney, CarsList, CarsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/practise/cars') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCarsList: CarsList,
					onTheCarsObjectPage: CarsObjectPage
                }
            },
            opaJourney.run
        );
    }
);