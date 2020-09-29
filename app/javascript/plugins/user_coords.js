const GetUserCoordinates = () => {
  /* () => {} this is an arrow function */
  document.querySelector(".current-location").addEventListener("click", (event) => {
    event.preventDefault()
    navigator.geolocation.getCurrentPosition((data) => {
      const lat = data.coords.latitude;
      const lon = data.coords.longitude;

      const mapboxApiKey = document.body.dataset.mapboxApiKey

      fetch(`https://api.mapbox.com/geocoding/v5/mapbox.places/${lon},${lat}.json?access_token=${mapboxApiKey}`)
      .then(response => response.json())
      .then((data) => {
        document.querySelector(".location-input").value = data.features[4].place_name;
      });
    });
  })
}


export { GetUserCoordinates };
