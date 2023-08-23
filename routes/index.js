var express = require('express');
var router = express.Router();
var userModel = require('../model/user_model');

// /* GET home page. */
// router.get('/user/info', function(req, res, next) {
//   res.render('user_info');
// });

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
  console.log("req.body", req.body)
  let route_id = req.body.route_id;
  let seats = req.body.seats;
  delete req.body.route_id;
  delete req.body.seats;

  // let seatsConfirm;
  //         seats.forEach((seat) => {
  //           userModel.takeCheckSeat(route_id, seat, (err, result) => {
  //             if(err){
  //               console.log(err);
  //              return  res.send(err);
  //             }else{
  //               console.log("resultsssss", result)
  //               if(result == false){
  //                 seatsConfirm = false;
  //                 return  res.status(200).json({
  //                   status : 0,
  //                 })
  //               }
  //             }
  //       })
  // })
  
  userModel.addUser(req.body, function(err, result){
    if(err){
      res.send(err);
    }else{
      var user_id = result.insertId;
      let prepareDataForTicket = {
        ticket_number : null,
        user_id : user_id,
        route_id : route_id,
        booking_date : new Date(),
        status : 0
      }

      userModel.createTicket(prepareDataForTicket, function(err, result){
        if(err){
          res.send(err); 
          console.log("err",err)
        }else{
          seats.forEach((seat) => {
            userModel.takeSeat(route_id, user_id, seat, (err, result) => {
              if(err){
                console.log(err);
               return  res.send(err);
              }
            })
          })
          userModel.routeSearchById(route_id, (err, result) => {
            if(err){
              return res.send(err);
            }else{
              res.status(200).json({
                status : 1,
                route_data : result
              })
            }
          })
        }
      })
    }
  })
 })

 router.get('/homepage/searchdata', function(req, res, next){
  res.render('search_data');
 })

 router.get('/homepage/booking', function(req, res, next){
  res.render('booking');
 })

 router.post('/route/search', function(req, res){
  var searchData = req.body;
  var noResult = false;
  userModel.filterRouter(searchData, function(err, result){
    if(err){
      console.log("err", err)
      return res.send("Fail");
    }else{
      if(result.length < 1){
        noResult = true;
        console.log("No Result", noResult)
      }
      return res.render('search_data', {
        result,
        noResult
      })
    }
  })
 })

 router.get('/user/register/:id', function(req, res) {
   var route_id = req.params.id;
   userModel.checkSeat(route_id, (err, result) => {
    if(err){
      return res.send("Fail");
    }else{
      console.log("result", result)
      res.render('user_info', {
        route_id : route_id,
        seats : result
       });
    }
   })
 
 })

 router.get('/seat/take/:id', function(req, res){
    var route_id = req.params.id;
    console.log("route_id", route_id)
    userModel.checkSeat(route_id, (err, seats) => {
      if(err){
        return res.send("Fail");
      }else{
        res.status(200).json({
          seats
        })
      }
     })
 })

module.exports = router;
