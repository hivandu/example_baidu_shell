var express = require('express');
var orm = require('orm');
var xss = require('node-xss').clean;

// 导入到路由
module.exports = function(router) {
	// 服务器的配置
	//orm相关用法 关系映射模型
	var server = '@localhost/';
	var dbusername = 'root';
	var dbpassword = '';
	var dbname = 'baiduNews';


	// 数据库设置
	router.use(orm.express("mysql://" + dbusername + ":" + dbpassword + server + dbname, {
		define: function(db, models, next) {
			models.News = db.define("news", {
				newsId: {
					type: 'serial',
					key: true
				},
				newsTitle: String,
				newsImage: String,
				newsContent: String,
				date: String,
				type: Number
			});
			next();
		}
	}));

	var dbManager = {
		select: function(req, res, next) {
			var type = req.body.type;
			if (!type) {
				type = req.query.type;
			}
			if (!type) {
				type = 0;
			}
			req.models.News.find({
				type: type
			}, function(err, news) {
				if (err)
					return console.error('Connection error: ' + err);
				res.locals.result = {
					result: 0,
					news: news
				}
				next();
			});
		},

		// 删除数据
		delete: function(req, res, next) {
			req.models.News.find({
				newsId: req.body.newsId
			}, function(err, news) {
				if (err)
					return console.error('Connection error: ' + err);
				if (news.length == 0) {
					res.locals.result = {
						result: 1,
						info: '当前记录不存在'
					}
					next();
				} else {
					var type = news[0].type;
					news[0].remove(function(err) {
						if (err)
							return console.error('Connection error: ' + err);
						req.models.News.find({
							type: type
						}, function(err, news2) {
							if (err)
								return console.error('Connection error: ' + err);
							res.locals.result = {
								result: 0,
								'info': "数据删除成功",
								news: news2
							}
							next();
						});
					});

				}
			});
		},

		insert: function(req, res, next) {
			//xss  防御
			req.models.News.create({
				newsTitle: xss(req.body.newsTitle),
				newsImage: xss(req.body.newsImage),
				type: req.body.newsType,
				newsContent: xss(req.body.newsContent),
				date: req.body.date
			}, function(error, news) {
				if (error) {
					res.locals.result = {
						result: 1,
						info: '新增失败'
					}
				}
				if (news) {
					res.locals.result = {
						result: 0,
						info: '新增成功'
					}

				} else {
					res.locals.result = {
						result: 2,
						info: '输入信息有误'
					}

				}
				next()
			});
		},

		update: function(req, res, next) {
			console.log({
				newsId: req.body.newsId,
				newsTitle: req.body.newsTitle,
				newsImage: req.body.newsImage,
				type: req.body.newsType,
				newsContent: req.body.newsContent,
				date: req.body.date
			});
			req.models.News.find({
				newsId: req.body.newsId,
			}, function(error, news) {
				if (error) {
					res.locals.result = {
						result: 1,
						info: error
					}
				}
				console.log(news);
				if (news.length > 0) {
					news[0].newsTitle = req.body.newsTitle;
					news[0].newsImage = req.body.newsImage;
					news[0].newsContent = req.body.newsContent;
					news[0].date = req.body.date;
					news[0].save(function(error) {
						if (error) {
							res.locals.result = {
								result: 3,
								info: error
							}
						}
						res.locals.result = {
							result: 0,
							info: '修改成功'
						}
						next();
					});
				} else {
					res.locals.result = {
						result: 2,
						info: '该条新闻不存在'
					}
					next();

				}
			})
		}
	}

	return dbManager;
}