var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/admin/travel/route', function(req, res, next) {
  res.render('admin/travel_route');
});

/* Get user lists. */
router.get('/admin/user/list', function(req, res, next) {
  res.render('admin/user_list');  
});




module.exports = router;
