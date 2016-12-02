$(document).ready(function() {

  $(document).on('mouseenter', '.single-meal', function(e) {
    console.log("fired");
    var $t = $(this);
    var marker = markers_obj[$t.data('meal-id')];
    console.log(marker);
    marker.setAnimation(google.maps.Animation.BOUNCE);
  });

  $(document).on('mouseleave', '.single-meal', function(e) {
    console.log("firing");
    var $t = $(this);
    var marker = markers_obj[$t.data('meal-id')];
    console.log(marker);
    marker.setAnimation(null);
  });

});

var map;
var markers_obj = {};

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

    var infoWindow = new google.maps.InfoWindow({
      content: "<div class='info-window'>" +
      "<h3> Chef: "+ map_results[i].chef_name +"</h3>" +
      "<p> Meal: "+  map_results[i].meal + "</p>" +
      "<p> Description: "+ map_results[i].description + "</p>" +
      "<p> Price: "+ map_results[i].price + "</p>" +
      "<img class='' src=" + map_results[i].image + ">" +
      "</div>"

    });



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

    setEvent(marker,map,infoWindow);

    var chef = map_results[i].chef_name;

    markers.push(marker);
    markers_obj[map_results[i]['meal_id']] = marker;
  }

  function setEvent(marker,map,infoWindow){
    marker.addListener('click', function() {
      infoWindow.open(map, marker);
    });
  }

}
