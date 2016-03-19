/* global angular, $ */
// (function() {
//   "use strict";
 
//   angular.module("app").controller("courseShow", function($scope, $http) {
//     $scope.setupCourseShow = function() {
//       $scope.courseId = $('#courseId').html();
//       console.log('courseId', $scope.courseId);
//       $scope.uiConfig = {
//         calendar:{
//           height: 450,
//           editable: true,
//           slotDuration: '00:05:00',
//           header:{
//             left: 'month agendaWeek agendaDay',
//             center: 'title',
//             right: 'today prev,next'
//           },
//           defaultView: 'agendaDay',
//           eventClick: $scope.alertEventOnClick,
//           eventDrop: $scope.alertOnDrop,
//           eventResize: $scope.alertOnResize,
//           eventColor: '#1ef40e'
//         }
//       };
//       $scope.eventSources = {};

//       $http.get('/courses/' + $scope.courseId + '.json').then(function(response) {
//         $scope.teetimes = response.data;
//         console.log(response.data);
//         $scope.eventSources = {
//           events: response.data.tee_times
//         };
//       });
//     };
   
//     $scope.alertEventOnClick = function(date, jsEvent, view) {
//       console.log(date.start.hour(), date.start.minute(), date);
//       var teetime = {
//         tee_time_slot: date.start.format("YYYY-MM-DD HH:mm:ss"),
//         course_id: $scope.courseId,
//         price: 40

//       };
//       console.log(teetime);
//       $http.post('/api/v1/teetimes', teetime).then(function(response) {
//         console.log(response);
//       });
//     };

//     window.$scope = $scope;
//   });
// })();