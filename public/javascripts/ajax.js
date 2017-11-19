define(function(require, exports, module) {
  var $ = require('seajq');
  var a = {};

  a.ready = function() {
    $(document).ready(function() {
      $('.index-navigator table td').click(function(e) {
        var index = $(this).index();
        getNewsByType(index);
        $('.index-navigator table td span').removeClass('cur');
        $(this).children('span').addClass('cur');
      });
      getNewsByType(0);
    });
  }

  function getNewsByType(type) {
    $.ajax({
      type: 'post',
      url: '/manager/select',
      dataType: 'json',
      data: "type=" + type,
      success: function(data) {
        updateNewsLi(data);
      }
    })

  }

  function updateNewsLi(ret) {
    var content = $('#newsul');
    content.empty();
    if (ret.result != 0) {
      $("<p id='test'><em>Error</em></p>").appendTo("#newsul");
    }
    news = ret.news;

    if (news.length) {
      for (var i = 0; i < news.length; i++) {
        var item = news[i];
        console.log(item.newsImage);
        $("<li class='index-content-item cf'><img src='" + item.newsImage + "'><h4>" + item.newsTitle + "</h4><div><span>" + item.newsContent + "</span></div><time>" + item.date + "</time></li>").appendTo("#newsul");
      }
    } else {
      $("<p id='test'><em>news is null</em></p>").appendTo("#newsul");
    }
  }

  module.exports = a;
})