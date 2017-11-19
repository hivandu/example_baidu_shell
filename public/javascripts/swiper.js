define(function(require, exports, module) {
  require('swiper-3.3.1.jquery.min');
  var s = {};
  var mySwiper = new Swiper('.swiper-container', {
    direction: 'horizontal',
    loop: true,
    autoplay: 5000,

    // 滚动条
    scrollbar:'.swiper-scrollbar',
    scrollbarHide:false
  })

  var mySwiper2 = new Swiper('.swiper-hotword', {
    direction:'vertical',
    loop:true,
    autoplay: 4000
  })

  module.exports = s;
})
