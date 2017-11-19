var express = require('express');
var router = express.Router();
var dbManager = require('./dbmanager')(router);
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var csrf = require('csurf');


var db = require('./dbmanager');
var dbManager = db(router);
var csrfProtection = csrf({
	cookie: true
});
var parseForm = bodyParser.urlencoded({
	extended: false
});

/* GET home page. */
router.get('/', function(req, res, next) {
	res.render('index', {
		title: 'Express'
	});
});

router.get('/manager', csrfProtection, function(req, res, next) {
	res.render('manager', {
		csrfToken: req.csrfToken()
	});
});

router.post('/manager/select', dbManager.select, function(req, res, next) {
	res.send(res.locals.result);
});

router.post('/manager/delete', dbManager.delete, function(req, res, next) {
	// res.render('manager');
	console.log(req.body.newsId);
	res.send(res.locals.result);
});

router.post('/manager/insert', parseForm, csrfProtection, dbManager.insert, function(req, res, next) {
	res.send(res.locals.result);
});

router.post('/manager/update', parseForm, csrfProtection, dbManager.update, function(req, res, next) {
	console.log('zhanglei')
	res.send(res.locals.result);
});


router.get('/manager/insert', parseForm, csrfProtection, dbManager.insert, function(req, res, next) {
	res.send(res.locals.result);
});

router.get('/manager/update', parseForm, csrfProtection, dbManager.update, function(req, res, next) {
	console.log('zhanglei')
	res.send(res.locals.result);
});

module.exports = router;