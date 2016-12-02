$(document).ready(function(){
  $('.glyphicon-heart').on('click', function(e){
    e.preventDefault();
    $this = $(this)
    var url = $this.closest('div').attr('id')
    $.ajax({
      url: url + "/favorite",
      method: "GET"
    }).done(function(response) {
      if($this.hasClass('glyphicon-heart-enabled')){
        $this.removeClass('glyphicon-heart-enabled')
        $this.addClass('glyphicon-heart-disabled')
      }else{
        $this.removeClass('glyphicon-heart-disabled')
        $this.addClass('glyphicon-heart-enabled')
      }
    })
  })
});