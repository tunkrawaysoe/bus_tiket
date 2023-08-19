var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/admin/travel/route', function(req, res, next) {
  res.render('admin/travel_route');
});

module.exports = router;
