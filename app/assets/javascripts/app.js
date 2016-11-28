// var map;
//
// function initMap() {
//   map = new google.maps.Map(document.getElementById("map"), {
//     center: {
//       lat: -34.397,
//       lng: 150.644
//     },
//     zoom: 8
//   });
// }
//
// google.maps.event.addDomListener(window, "load", initialize);
// require('dotenv').config();

$(document).ready(function() {

// function initMap() {
//   console.log("initMap fired");
//   var latlng = new google.maps.LatLng(-34.397, 150.644);
//   var myOptions = {
//     zoom: 8,
//     center: latlng,
//     mapTypeId: google.maps.MapTypeId.ROADMAP
//   };
//
//   console.log(document.getElementById("map"));
//   var map = new google.maps.Map(document.getElementById("map"),
//     myOptions);
// }

// var myKey = "AIzaSyBeCE8-G4WHfmtbqCxBIg60KlfyzFnZ4SY";
//
// function loadScript() {
//   var script = document.createElement('script');
//   script.src = "https://maps.googleapis.com/maps/api/js?key=" + myKey + "&callback=initialize";
//   document.body.appendChild(script);
// }

// $(function() {
//   loadScript();
//   initialize();
// });

});


// var map;
// function initMap() {
//   map = new google.maps.Map(document.getElementById('map'), {
//     center: {lat: 30.279961, lng: -97.7440557},
//     zoom: 13
// });

var map;

function initMap() {
  map = new google.maps.Map(document.getElementById("map"), {
    center: {
      lat: 30.279961,
      lng: -97.7440557
    },
    zoom: 13
  });

  var markers = [];


  console.log("Before Ajax request");

  $.ajax({
    method: "GET",
    dataType: "json",
    url: "/meals/search"
  }).done(function(response) {
    console.log("Yay");
    // console.log(response);
    //
    // console.log(typeof response);

    for (var i in response) {
      var position = {
        lat: response[i].coordinates[0],
        lng: response[i].coordinates[1]
      };

      var title = i;

      var marker = new google.maps.Marker({
        title: title,
        map: map,
        position: position,
        animation: google.maps.Animation.DROP
      });

      markers.push(marker);

      console.log(i);
      // console.log(response[i]);
      console.log(response[i].chef);
      console.log(response[i].coordinates);
    }


  }).fail(function(error) {
    console.log("Something went wrong");
    console.log(error);
  });

}
