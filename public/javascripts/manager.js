$(document).ready(function() {
  var newsId;
  var currentType = 0;
  $("#navbar li").click(function(e) {
    e.preventDefault();
    $(this).tab('show');
    currentType = $(this).index();
    getNewsByType(currentType);
  });

  function getNewsByType(type) {
    $.ajax({
      type: 'POST',
      url: 'manager/select',
      dataType: 'json',
      data: {
        type: type
      },
      success: function(data) {
        updateNewsLi(data);
      }
    })
  }

  function deleteNews(id) {
    $.ajax({
      type: 'POST',
      url: 'manager/delete',
      dataType: 'json',
      data: {
        newsId: id
      },
      success: function(data) {
        $("#info").text("信息删除成功");
        $("#delete").hide(1000);
        updateNewsLi(data);
      }
    })
  }

  function insertNews(news) {
    $.ajax({
      type: 'POST',
      url: 'manager/insert',
      dataType: 'json',
      data: {},
      success: function(data) {
        updateNewsLi(data);
      }
    })
  }

  //显示删除对话框
  function showDeleteDialog(id) {
    newsId = id;
    $("#delete").show();
    $("#info").text("确定要删除吗？");
  }

  // 删 对应后端的按钮
  $("#deleteBtn").click(function() {
    deleteNews(newsId);
  });

  $("#cancelBtn").click(function() {
    $("#delete").hide();
  });

  // 显示修改界面
  function showModify(news) {
    $("#mdfInfo").text('请输入修改信息');
    $('#mNewsId').val(news.newsId);
    $("#mNewsType").val(news.type);
    $("#mNewsTitle").val(news.newsTitle);
    $("#mNewsImage").val(news.newsImage);
    $("#mNewsDate").val((news.date).substring(0, 10));
    $("#mNewsContent").text(news.newsContent);
    $("#modify").slideDown(1000);
  }

  // 隐藏修改页面
  $("#mdfHide").click(function() {
    $("#modify").slideUp(1000);
  });

  //更新
  $("#mdfUpDate").click(function() {
    var newsId = $('#mNewsId').val();
    var newsType = $('#mNewsType').val();
    var newsTitle = $("#mNewsTitle").val();
    var newsImage = $("#mNewsImage").val();
    var newsContent = $("#mNewsContent").val();
    var date = $("#mNewsDate").val();
    var _csrf = $("#updatecsrf").val();
    if (newsType == '-1') {
      alert('请选择新闻类别');
      return;
    }
    if (!newsTitle) {
      alert("请输入标题");
      return;
    }

    if (!newsImage) {
      alert("请输入图片");
      return;
    }

    if (!newsContent) {
      alert("请输入内容");
      return;
    }

    if (!date) {
      alert("请输入时间");
      return;
    }
    $.ajax({
      url: 'manager/update',
      type: 'get',
      dataType: "json",
      data: {
        "newsId": newsId,
        "newsType": newsType,
        "newsTitle": newsTitle,
        "newsImage": newsImage,
        "newsContent": newsContent,
        "date": date,
        "_csrf": _csrf
      },
      success: function(data) {
        $("#mdfInfo").text(data.info);
        $("#modify").slideUp(1000);
        getNewsByType(newsType);
      }
    });
  });

  // 增 对应后端的按钮
  $("#insertSave").click(function() {
    var newsType = $('#newsType').val();
    var newsTitle = $("#newsTitle").val();
    var newsImage = $("#newImg").val();
    var newsContent = $("#newsContent").val();
    var date = $("#newsDate").val();
    var _csrf = $("#insertcsrf").val();
    if (newsType == '-1') {
      alert('请选择新闻类别');
      return;
    }
    if (!newsTitle) {
      alert("请输入标题");
      return;
    }

    if (!newsImage) {
      alert("请输入图片");
      return;
    }

    if (!newsContent) {
      alert("请输入内容");
      return;
    }

    if (!date) {
      alert("请输入时间");
      return;
    }

    $.ajax({
      url: '/manager/insert',
      type: 'post',
      dataType: "json",
      data: {
        "newsType": newsType,
        "newsTitle": newsTitle,
        "newsImage": newsImage,
        "newsContent": newsContent,
        "date": date,
        "_csrf": _csrf
      },
      success: function(data) {
        console.log(data);
        $("#insertPrompt").text(data.info);
        if (data.result == 0) {
          $("#insertNewsDialog").hide(1000);
          if (currentType == newsType) {
            getNewsByType(currentType);
          }
        }
      }
    });
  });

  $("#insertNews").click(function() {
    $("#insertNewsDialog").show();
    $("#insertPrompt").text('请输入信息');
    $('#newsType').val('-1');
    $("#newsTitle").val('');
    $("#newImg").val('');
    $("#newsContent").val('');
    $("#newsDate").val('');
  });

  $("#insertCancel").click(function() {
    $("#insertNewsDialog").slideUp(1000);
  });

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
        $("<li class='index-content-item cf'><img src='" + item.newsImage + "'><h4>" +
          item.newsTitle + "</h4><div><span>" + item.newsContent +
          "</span></div><time>" + item.date + "</time>" +
          "<button type='button' class='btn btn-danger btn-delete'>删除</button>" +
          "<button type='button' class='btn btn-primary btn-modfity'>修改</button>" +
          "</li>").appendTo("#newsul");
      }
    } else {
      $("<p id='test'><em>news is null</em></p>").appendTo("#newsul");
    }

    $("li > .btn-modfity").click(function(e) {
      var index = $(this).parent().index();
      showModify(news[index]);
    });

    $("li > .btn-delete").click(function(e) {
      var index = $(this).parent().index();
      showDeleteDialog(news[index].newsId);
    });
  }

  getNewsByType(0);
});