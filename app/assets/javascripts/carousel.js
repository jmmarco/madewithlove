$(document).on('turbolinks:load', function() {
  $('.carousel').flickity({
    // options
    wrapAround: true,
    imagesLoaded: true,
    pageDots: false,
    pauseAutoPlayOnHover: true,
    prevNextButtons: false,
    setGallerySize: false,


  });


  $('.featured-meals-gallery').flickity({
    wrapAround: true,
    autoPlay: false,
    imagesLoaded: true,
  });


  var images = [
  "images/front/cooking_1.jpg",
  "images/front/cooking_2.jpg",
  "images/front/cooking_3.jpg",
  "images/front/cooking_4.jpg",
  "images/front/cooking_5.jpg",
  "images/front/cooking_6.jpg",
  "images/front/cooking_7.jpg",
  ];

  var heroText = [
    "Homemade<br>meals<br>made for you!",
    "Order  homemade<br>meals near you..",
    "Delicious<br>comfort<br>food at<br>your fingertips",
    "Good and<br>healthy<br>meals for you! "
  ];

  var imagesLength = images.length;
  var heroTextLength = heroText.length;
  var x = Math.floor(imagesLength * Math.random());
  var y = Math.floor(heroTextLength * Math.random());

  var a = images[0];
  document.getElementById('image').src = images[x];
  document.getElementById("hero").innerHTML = heroText[y];


});
