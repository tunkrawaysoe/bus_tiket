var express = require('express');
var router = express.Router();
var userModel = require('../model/user_model');

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

 router.post('/user/register',function(req,res){
  userModel.addUser(req.body, function(err, result){
    if(err){
      console.log('err', err)
      res.send(err);
    }else{
      res.render('index');
    }
  })

 })
 router.get('/homepage/searchdata', function(req, res, next){
  res.render('search_data');
 })
 router.get('/homepage/booking', function(req, res, next){
  res.render('booking');
 })

module.exports = router;
