define(function(require, exports, module) {
  var s = {};
  var $ = require('seajq');

  s.indexSlide = function(){
    $('.index-view .btn-search').click(function(){
      $('.index-view').css({
        'right':'100%'
      })
    });
    $('.searchbox-view .btn-back').click(function(){
      $('.index-view').css({
        'right':0
      })
    });
    $('.index-view .btn-userhome').click(function(){
      $('.index-view').css({
        'left': '100%'
      })
    });
    $('.userhome-view .btn-back').click(function(){
      $('.index-view').css({
        'left':0
      })
    });
  }

  s.searchSlide = function(){
    $('.index-view .btn-search').click(function(){
      $('.searchbox-view').css({
        'left': 0
      })
    });
    $('.searchbox-view .btn-back').click(function(){
      $('.searchbox-view').css({
        'left':'100%'
      })
    });
  }

  s.userSlide = function(){
    $('.index-view .btn-userhome').click(function(){
      $('.userhome-view').css({
        'right': 0
      })
    });
    $('.userhome-view .btn-back').click(function(){
      $('.userhome-view').css({
        'right':'100%'
      })
    });
  }

  module.exports = s;
})
