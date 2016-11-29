$(document).on('turbolinks:load', function() {
  $('.main-gallery').flickity({
    // options
    cellAlign: 'left',
    contain: true,
    wrapAround: true,
    freeScroll: true,
    autoPlay: 1500,
    pageDots: false,
    pauseAutoPlayOnHover: false,
    selectedAttraction: 0.0001,
    friction: 1.5,
    prevNextButtons: false
  });
});
