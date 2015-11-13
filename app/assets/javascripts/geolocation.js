function geolocationSuccess(position) {
  var longitude = position.coords.longitude;
  var latitude = position.coords.latitude;

  console.log(longitude, latitude);

  $.ajax({
    url: '/user_show',
    method: 'GET',
    data: {
      longitude: longitude,
      latitude: latitude
    },
    dataType: 'script'
  });
}

function geolocationError() {
  console.log("ERROR");

}

$(document).on("ready page:load", function() {
  $("#current-location").click(function(ev) {
    ev.preventDefault();


    if ("geolocation" in navigator) {
      navigator.geolocation.getCurrentPosition(geolocationSuccess, geolocationError);
    } else {
      alert("Current browser doesn't support geolocation");
    }
  });
});