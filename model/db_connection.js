const mysql = require('mysql2')
// create the connection to database
exports.connection = mysql.createConnection({
    host: 'localhost',
    user: 'admin',
    password:'root',
    database: 'bus'
  });

