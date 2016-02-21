/* global angular */

(function() {
  angular.module("app").controller("teetimeCtrl", function($scope, $http) {
    $scope.setup = function() {
      $scope.teetimes = [];
      $http.get('/courses/2.json').then(function(response) {
        $scope.teetimes = response.data;
        console.log(response.data);

      });
    };
  });
})();