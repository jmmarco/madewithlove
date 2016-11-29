$(document).on('turbolinks:load', function() {
  $('.main-gallery').flickity({
    // options
    cellAlign: 'left',
    contain: true,
    wrapAround: true,
    freeScroll: true,
    autoPlay: true,
    pageDots: false,
    pauseAutoPlayOnHover: true,
    selectedAttraction: 0.0001,
    friction: 1.5,
    prevNextButtons: false
  });
});
