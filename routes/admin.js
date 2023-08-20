var express = require('express');
var router = express.Router();
var userModel = require('../model/user_model');
/* GET home page. */
router.get('/admin/travel/route', function(req, res, next) {
  res.render('admin/travel_route');
});

/* Get user lists. */
router.get('/admin/user/list', function(req, res, next) {
  var noResult = false;
  userModel.bookingList(function(err, result){
    if(err){
      console.log("err", err);
      res.send(err)
    }else{
      if(result.length < 1){
        noResult = true;
      }

      console.log("Result", result)
      res.render('admin/user_list',{
        result, noResult
      });  
    }
  })
  
});
/* Get bus table. */
router.get('/admin/bus/lists', function(req, res, next) {
  res.render('admin/bus_lists');  
});
/* Get route additon. */
router.get('/admin/route/addition', function(req, res, next) {
  res.render('admin/add_route');  
});
/* Get route table. */
router.get('/admin/route/list', function(req, res, next) {
  var noResult = false;
  userModel.routeList(function(err,result){
    if(err){
      console.log("err", err);
      res.send(err)
    }else{
      if(result.length < 1){
        noResult = true;
      }

      res.render('admin/route_list',{
        result, noResult
      }); 
    } 
  })
});





module.exports = router;
