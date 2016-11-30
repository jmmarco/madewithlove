$(document).ready(function(){
  $('.glyphicon-heart').on('click', function(e){
    e.preventDefault();
    $this = $(this)
    var url = $this.parent('a').attr('href')
    console.log(url)
  })
});