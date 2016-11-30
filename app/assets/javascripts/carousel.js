$(document).on('turbolinks:load', function() {
  $('.main-gallery').flickity({
    // options
    wrapAround: true,
    autoPlay: 7000,
    imagesLoaded: true,
    pageDots: false,
    pauseAutoPlayOnHover: true,

  });


  $('.featured-meals-gallery').flickity({
    wrapAround: true,
    autoPlay: false,
  });

});
