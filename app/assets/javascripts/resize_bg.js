$(function(){
  var image = $("#bg img");
  function resize(){
    image_width = image.width();
    image_height = image.height();
    window_height = $(window).height();
    window_width = $(window).width();
    if(image_height < window_height){
      image.css('height', '100%');
      image.css('width', 'auto');
    }
    if(image_width < window_width){
      image.css('width', '100%');
      image.css('height', 'auto');
    }
  }
  image.load(resize);
  $(window).resize(resize);
});
