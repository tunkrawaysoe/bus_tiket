var express = require('express');
var router = express.Router();
var userModel = require('../model/user_model');
const { route } = require('.');

//middleware for admin login
function middleWare(req, res, next){
  if(req.session.isLog){
    return next();
  }else{
    return res.redirect('/admin/login');
  }
}


/* GET ADMIN LOGIN PAGE */
router.get('/admin/login', function(req, res){
  var err= '';
  res.render('admin/admin_login', {
    err
  })
})

// POST ADMIN
router.post('/admin/login', function(req, res){
  let admin_data = req.body;
  userModel.adminLogin(admin_data, function(err, result){
    if(err){
      res.send(err);
    }else{
      if(result.length < 1){
        var err = "တစ်ခုခုမှားနီပါရေ တတည့်ကျအောင်ထည့်ပါချ 😒"
       res.render('admin/admin_login', {
          err
       })
      }else{
        req.session.isLog = true;
        
        res.redirect('/admin/user/list');
      }
    }
  })
})

/* GET home page. */
router.get('/admin/travel/route',middleWare, function(req, res, next) {
  res.render('admin/travel_route');
});

/* Get user lists. */
router.get('/admin/user/list',middleWare, function(req, res, next) {
 
  var noResult = false;
  userModel.bookingList(function(err, result){
    if(err){
      console.log("err", err);
      res.send(err)
    }else{
      if(result.length < 1){
        noResult = true;
      }

      res.render('admin/user_list',{
        result, noResult
      });  
    }
  })
  
});

/* Get bus table. */
router.get('/admin/bus/lists',middleWare, function(req, res, next) {

  var noResult=false;
  userModel.bus_list(function(err,result){
    if(err){
      console.log("err", err);
      res.send(err)
    }else{
      if(result.length < 1){
        noResult = true;
      }

      console.log("Result", result)
      res.render('admin/bus_lists',{
        result, noResult
      });  
    }
  })
 
});

/* Get route additon. */
router.get('/admin/route/addition',middleWare, function(req, res, next) {

  res.render('admin/add_route');  
});

/* Get route table. */
router.get('/admin/route/list',middleWare, function(req, res, next) {

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

// adding route from backend
router.post('/admin/route/add',middleWare, function(req, res){

  userModel.addRoute(req.body, function(err, result){
    if(err){
      console.log("err", err)
      res.send(err);
    }else{
      res.redirect('/admin/route/list');
    }
  })
})


// for user confirm and status change
router.get('/admin/user/confirm/:ticket_id',middleWare, function(req, res){

  var ticket_id = req.params.ticket_id;
  userModel.confirmTicket(ticket_id, function(err, result){
    if(err){
      res.send(err);
    }else{
      res.redirect('/admin/user/list');
    }
  })
})

// for user deny and status change
router.get('/admin/user/deny/:ticket_id',middleWare, function(req, res){

  var ticket_id = req.params.ticket_id;
  userModel.denyTicket(ticket_id, function(err, result){
    if(err){
      res.send(err);
    }else{
      res.redirect('/admin/user/list');
    }
  })
})

// for user delete and status change
router.get('/admin/user/delete/:ticket_id',middleWare, function(req, res){

  var ticket_id = req.params.ticket_id;
  userModel.deleteTicket(ticket_id, function(err, result){
    if(err){
      res.send(err);
    }else{
      res.redirect('/admin/user/list');
    }
  })
})


module.exports = router;
