/* global angular */
(function() {
  "use strict";
 
  angular.module("app").controller("courseShow", function($scope) {

    $scope.uiConfig = {
      calendar:{
        height: 450,
        editable: true,
        header:{
          left: 'month agendaWeek agendaDay',
          center: 'title',
          right: 'today prev,next'
        },
        defaultView: 'agendaDay',
        dayClick: $scope.alertEventOnClick,
        eventDrop: $scope.alertOnDrop,
        eventResize: $scope.alertOnResize
      }
    };

    $scope.eventSources = {
      events: [
        {
          title: 'Event1',
          start: '2016-01-17'
        },
        {
          title: 'Event2',
          start: '2016-01-20'
        }
        // etc...
      ],
      color: 'yellow',   // an option!
      textColor: 'black' // an option!
    };


    window.$scope = $scope;

  });
})();