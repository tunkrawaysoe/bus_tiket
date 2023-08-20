var {connection} = require('./db_connection')


exports.addUser = (data, callback) => {
    connection.query('INSERT INTO userinfo_table SET ?', [ data ], function(err, result){
        if(err){
            callback(err, null);
        }else{
            callback(null, result);
        }
    })
}