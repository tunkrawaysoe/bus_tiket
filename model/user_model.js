var {connection} = require('./db_connection')


exports.addUser = (data, callback) => {
    connection.query('INSERT INTO user_table SET ?', [ data ], function(err, result){
        if(err){
            callback(err, null);
        }else{
            callback(null, result);
        }
    })
}

exports.filterRouter = (searchData, callback) => {
    console.log("searchData.start_location", searchData.end_location)
    var query;
    if(searchData.departure_date){
         query = 'SELECT * FROM route_table WHERE start_location = ? and end_location = ? and departure_date = ?';
    }else{
         query = 'SELECT * FROM route_table WHERE start_location = ? and end_location = ?';
    }
    connection.query(query, 
    [searchData.start_location, searchData.end_location, searchData.departure_date ], function(err, result){
        if(err){
            callback(err, null);
        }else{
            console.log("result", result)
            callback(null, result);
        }
    }
    )
}