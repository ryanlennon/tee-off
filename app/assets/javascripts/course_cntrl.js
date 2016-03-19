/* global angular */

(function() {
  angular.module("app").controller("coursesCtrl", function($scope, $http, $q) {

    var marker;
    var map;
    var mapPromise = $q.defer();
    var courses;
    var searchBox = new google.maps.places.SearchBox(input);
    var input = document.getElementById('pac-input');
    var places = searchBox.getPlaces();
    // var courses = Course.near("#{params[:address]}", 5);

    function initMap() {
      map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: 37.8968, lng: -122.2624},
        zoom: 11});
      mapPromise.resolve();
    }


    function placeMarkers() {
      var bounds = new google.maps.LatLngBounds(); //google bounds object, storage of lat lngs.
      for (var i = 0; i < $scope.courses.length; i++) { //iterate through courses
        var latlng = new google.maps.LatLng($scope.courses[i].latitude, $scope.courses[i].longitude); //make new latlng google object
        bounds.extend(latlng); //add to bounds object
        var marker = new google.maps.Marker({ //create new google marker
          position: latlng,
          map: map,
          title: "Course"
        });

        marker.setMap(map); // add new google marker to map
      } //end of loop
      map.fitBounds(bounds); // fit the bounds of the map to best fit the pins
    }

    function initAutocomplete() {
  // Create the search box and link it to the UI element.
      var input = document.getElementById('pac-input');
      var searchBox = new google.maps.places.SearchBox(input);
      map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

  // Bias the SearchBox results towards current map's viewport.
      map.addListener('bounds_changed', function() {
        searchBox.setBounds(map.getBounds());
      });

      var markers = [];
  // Listen for the event fired when the user selects a prediction and retrieve
  // more details for that place.
      searchBox.addListener('places_changed', function() {
        var places = searchBox.getPlaces();

        if (places.length === 0) {
          return;
        }
    // Clear out the old markers.
        markers.forEach(function(marker) {
          marker.setMap(null);
        });
        markers = [];

        var bounds = new google.maps.LatLngBounds();
        for (var i = 0; i < $scope.courses.length; i++) { //iterate through courses
          var latlng = new google.maps.LatLng($scope.courses[i].latitude, $scope.courses[i].longitude); //make new latlng google object
          bounds.extend(latlng); //add to bounds object
          var marker = new google.maps.Marker({ //create new google marker
            position: latlng,
            map: map,
            title: "Course"
          });

          marker.setMap(map); // add new google marker to map
        } //end of loop
        map.fitBounds(bounds); // fit the bounds of the map to best fit the pins
      });
    }
   
    $scope.setup = function() {

      $http.get('/api/v1/courses.json').then(function(response) {
        initMap();
        $scope.courses = response.data;
       
        placeMarkers();

        initAutocomplete();
        

      });

    };
  });
})();

