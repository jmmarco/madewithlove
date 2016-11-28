$(document).on('turbolinks:load', function() {
  $('.main-gallery').flickity({
    // options
    cellAlign: 'left',
    contain: true,
    wrapAround: true,
    freeScroll: true,
    autoPlay: true
  });
});
