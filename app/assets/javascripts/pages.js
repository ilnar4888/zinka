$(document).ready(function(){
  $("#slider").slick({
    dots: false,
    infinite: true,
    speed: 1000,
    fade: true,
    arrows: false,
    cssEase: 'ease',
    autoplay: true,
    adaptiveHeight: false,
    autoplaySpeed: 3000,
    variableWidth: false
  });
});