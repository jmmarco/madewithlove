$(document).on('turbolinks:load', function() {
  $('.main-gallery').flickity({
    // options
    wrapAround: true,
    autoPlay: 7000,
    imagesLoaded: true,
    pageDots: false,
    pauseAutoPlayOnHover: true,

  });
});
