$(document).ready(function() {

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


});
