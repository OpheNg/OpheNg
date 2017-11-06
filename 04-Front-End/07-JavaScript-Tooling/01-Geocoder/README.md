## Background & Objectives

In this exercise, we'll write our first AJAX request. Let's start simple with a `GET` request. Here we'll use the [Google Geocoding API](https://developers.google.com/maps/documentation/geocoding/intro). We want to build a tool where we can input an address, hit a button, and get the **GPS Coordinates** back! For the cherry on top, we'll display the map as well.


<div class="text-center">
  <img src="https://raw.githubusercontent.com/lewagon/fullstack-images/master/frontend/ajax_geocoder.gif" alt="Google Geocoding demo" width="100%">
</div>

## Specs

You can launch your local server with:

```bash
rake webpack
```

### Geocoding

Read the [Google Geocoding API documentation](https://developers.google.com/maps/documentation/geocoding/intro) and the quick start tutorial **[Adding a Map to your Website](https://developers.google.com/maps/documentation/javascript/adding-a-google-map)**. It boils down to doing an HTTP `GET` request with an address as a query string parameter.

```
https://maps.googleapis.com/maps/api/geocode/json?address=16%20Villa%20Gaudelet%20Paris
```

Go ahead and add a form to your HTML page. It should contain an `input` where a user can type an address in, and a `submit` button.

Once that's done, use the `submit` event to catch the moment the form is posted by the user. That's when you'll want to trigger the AJAX query to the Google Geocoding service using `fetch` (go back to yesterday's lecture slides).

Try to `console.log()` what you get back from the API. It's a massive JSON! Now you've got that, figure out where the GPS coordinates are buried and display them on screen.

### [OPTIONAL] Displaying a map

To display a Google Map with a marker at the specified address, we'll use a second API, the [Google Maps JavaScript API](https://developers.google.com/maps/documentation/javascript).

To use it, add this line to the bottom of your HTML file, just **before** you require `build/application.js`:

```html
<script src="https://maps.googleapis.com/maps/api/js"></script>
```

To add a map, you'll need an empty supporting HTML element. For instance:

```html
<div id="map" style="height: 300px"></div>
```

Once again, please read at the [Google Maps JavaScript API documentation](https://developers.google.com/maps/documentation/javascript). These kinds of pages will be your starting point for every API you ever use. The real world doesn't have Kitt 😿, so make friends with the API documentation!

To display a map in your `#map` element, you can use these lines:

```js
const map = new google.maps.Map(document.getElementById('map'), {
  center: { lat: 48.8648482, lng: 2.3798534 },
  zoom: 14  // Change this value from 0 to 18
});
```

To add a marker to the map, if the variable `map` holds the `google.maps.Map` object, you can run:

```js
const marker = new google.maps.Marker({
  map: map,
  position: { lat: 48.8648482, lng: 2.3798534 }
});
```

If you get the following warning, just **ignore** it for this exercise.

![](https://raw.githubusercontent.com/lewagon/fullstack-images/master/frontend/google_maps_api_warning.png)

Happy geocoding! 🌎 🌍 🌏