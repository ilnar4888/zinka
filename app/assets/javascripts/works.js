$('.sl').slick({
  cssEase: 'ease-in',
  arrows: true,
  fade: true,
  asNavFor: '.sl2',
});

$('.sl2').slick({
  dots: true,
  arrows: true,
  slidesToShow: 7,
  focusOnSelect: true,
  asNavFor: '.sl'
});