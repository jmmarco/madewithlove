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


  for (var i in map_results) {
    var position = {
      lat: map_results[i].coordinates[0],
      lng: map_results[i].coordinates[1]
    };

    var title = map_results[i].chef_name;

    var marker = new google.maps.Marker({
      title: title,
      map: map,
      position: position,
      animation: google.maps.Animation.DROP
    });

    markers.push(marker);
  }
}
