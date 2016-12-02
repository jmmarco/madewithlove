$(document).ready(function() {
  var images = [
  "images/hero/cooking_1.jpg",
  "images/hero/cooking_2.jpg",
  "images/hero/cooking_3.jpg",
  "images/hero/cooking_4.jpg",
  "images/hero/cooking_5.jpg",
  "images/hero/cooking_6.jpg",
  "images/hero/cooking_7.jpg",
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
  if (document.getElementById('image')) {
    document.getElementById('image').src = images[x];
    document.getElementById("hero").innerHTML = heroText[y];
  }

});
