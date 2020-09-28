const GetUserCoordinates = () => {
  // navigator.geolocation.getCurrentPosition((data) => {
  //   var lat = data.coords.latitude;
  //   var lon = data.coords.longitude;
  //   document.getElementById('lat').value = lat;
  //   document.getElementById('lon').value = lon;
  navigator.geolocation.getCurrentPosition(function (position) {
    getUserAddressBy(position.coords.latitude, position.coords.longitude)
  },
  function getUserAddressBy(lat, lon) {
    document.getElementById('latlon').value = (lat, lon);
  });
}

export { GetUserCoordinates };