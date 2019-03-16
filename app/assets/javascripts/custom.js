$(document).ready(function getLocation() {
  if (navigator.geolocation) {
    debugger
    navigator.geolocation.getCurrentPosition(showPosition);
  } else {
    alert("Geolocation is not supported by this browser.");
  }
})

function showPosition(position) {
  console.log(position.coords.latitude);
  console.log(position.coords.longitude);
  $.post("/submit",
    {
      Latitude: position.coords.latitude,
      Longitude: position.coords.longitude
    });
};
