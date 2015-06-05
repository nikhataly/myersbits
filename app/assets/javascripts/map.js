function Map(mapElem) {
  this.mapElem = mapElem;
  this.markers = [];
}

Map.prototype.init  = function(latitude, longitude){
  var options = {
    center: {lat: latitude, lng: longitude}, 
    zoom: 18, 
    mapTypeId: google.maps.mapTypeId.ROADMAP 
  };

  this.canvas = new google.maps.Map(this.mapElem, options);
}

  Map.prototype.addMarker = function(latitude, longitude, markerImage ) {
    var options = {
      position: {lat: latitude, lng: longitude}, 
      map: this.canvas
    } 

    if (markerImage) {
      options.icon = markerImage;
    }

    var myMarker = new google.maps.Marker(options);
    this.markers.push(myMarker);
  }

$(document).on('ready page:load', function() {
  if ($('#map-canvas').length) {
    var latitude = $('#map-canvas').data("latitude");
    var longitude = $('#map-canvas').data("longitude");
    var customImage = 

    window.myMap = new Map($('#map-canvas')[0]);
    myMap.init(latitude, longitude);
    myMap.addMarker(latitude, longitude, customImage);
  }
});