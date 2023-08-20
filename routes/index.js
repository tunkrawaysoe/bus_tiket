var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/user/info', function(req, res, next) {
  res.render('user_info');
});

router.get('/trip', function(req, res, next) {
  res.render('trip');
});
router.get('/Book', function(req, res, next) {
  res.render('Book');
});

router.get('/home', function(req, res, next){
 res.render('home');
})
router.get('/homepage', function(req, res, next){
  res.render('index');
 })
 router.get('/register', function(req, res, next){
  res.render('booking');
 })
 router.get('/homepage/detail', function(req, res, next){
  res.render('semore');
 })
module.exports = router;
