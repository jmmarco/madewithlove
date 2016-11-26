$(document).ready(function() {
  // // Add custom JS here

});


$(document).on('turbolinks:load', function() {

   console.log('(document).turbolinks:load');
   $(function () {
     $('[data-toggle="popover"]').popover();
   });

   // Target the element
   $("#profile img").popover({
     placement: 'bottom',
     container: 'body',
     html: true,
     trigger: "manual",
     content: function() {
       return $("#profile-popover").html();
     }
   // Show the popover when the the user hovers over the avatar
   }).on("mouseenter", function() {
     var _this = this;
     $(this).popover("show");
     $(this).siblings(".popover").on("mouseleave", function() {
       $(_this).popover('hide');
     });
   // Hide the popover when the user leaves the popover menu
   }).on("mouseleave", function() {
     var _this = this;
     setTimeout(function() {
       if (!$(".popover:hover").length) {
         $(_this).popover("hide");
       }
     }, 100);
   });
});
