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


  // var content = "<div>" +
  // "<h3>"+ config +"</h3>" +
  // "</div>";



  // Create info window

  var mealListing = [];


  for (var i in map_results) {

    // mealListing.push(new Meal(map_results[i].meal, map_results[i].chef_name, map_results[i].description, map_results[i].coordinates))

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


  }

  function setEvent(marker,map,infoWindow){
    marker.addListener('click', function() {
      infoWindow.open(map, marker);
    });
  }


}
