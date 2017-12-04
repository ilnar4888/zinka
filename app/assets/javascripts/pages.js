$(document).ready(function(){
  $("#slider").slick({
    dots: false,
    infinite: true,
    speed: 4000,
    fade: true,
    arrows: false,
    cssEase: 'ease',
    autoplay: true,
    adaptiveHeight: false,
    autoplaySpeed: 6000,
    variableWidth: false,
    focusOnSelect: true
  });
});