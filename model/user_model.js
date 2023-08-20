var {connection} = require('./db_connection')
var moment = require('moment');

exports.bookingList = (callback) => {
    var query = 'SELECT ticket_table.ticket_id,ticket_table.status, user_table.name, route_table.start_location, route_table.end_location, route_table.departure_date, route_table.departure_time FROM ' +
    'ticket_table '+
    ' INNER JOIN user_table ON ticket_table.user_id = user_table.user_id '+
   ' INNER JOIN route_table ON ticket_table.route_id = route_table.route_id '
   connection.query(query, function(err, result){
    if(err){
        callback(err, null);
    }else{
        const modifiedData = result.map(event => ({
            ...event,
            departure_date: moment(new Date(event.departure_date)).calendar()
          }));

          console.log("Modei", modifiedData)
        callback(null, modifiedData);
    }
   })
}


exports.routeList = (callback) => {
    var query = 'SELECT * FROM bus.route_table'+
    ' INNER JOIN bus_table on bus_table.bus_id =  route_table.bus_id; '
    connection.query(query,function(err,result){
        if(err){
            callback(err,null);
        }
        else{
            const modifiedData = result.map(event => ({
                ...event,
                departure_date: moment(new Date(event.departure_date)).calendar()
              }));
    
              console.log("Modei", modifiedData)
            callback(null, modifiedData);
        }
    })
    


}

exports.bus_list=(callback) => {
 var query= 'SELECT * from bus_table'

 connection.query(query, function(err,result){
    if(err){
        callback(err,null);
    }
    else{
        callback(null,result)
    }
 })
}





exports.addUser = (data, callback) => {
    connection.query('INSERT INTO user_table SET ?', [ data ], function(err, result){
        if(err){
            callback(err, null);
        }else{
            console.log("result", result)
            callback(null, result);
        }
    })
}

exports.createTicket = (data, callback) => {
    connection.query('INSERT INTO ticket_table SET ?', [ data ], function(err, result){
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
    connection.query(query, [searchData.start_location, searchData.end_location, searchData.departure_date ], function(err, result){
        if(err){
            callback(err, null);
        }else{
            const modifiedData = result.map(event => ({
                ...event,
                departure_date: moment(new Date(event.departure_date)).format('YYYY-MM-DD')
              }));
    
            callback(null, modifiedData);
        }
    }
    )
}

exports.addRoute = (data, callback) => {
    connection.query("Insert into route_table set ?", [ data ], function(err, result){
        if(err){
            callback(err, null);
        }else{
            callback(null, result);
        }
    })
}

exports.confirmTicket = (id , callback) => {
    connection.query("update ticket_table set status = 1 where ticket_id = ?", [ id ], function(err, result){
        if(err){
            callback(err, null);
        }else{
            callback(null, result);
        }
    })
}

exports.denyTicket = (id , callback) => {
    connection.query("update ticket_table set status = 0 where ticket_id = ?", [ id ], function(err, result){
        if(err){
            callback(err, null);
        }else{
            callback(null, result);
        }
    })
}

exports.deleteTicket = (id , callback) => {
    connection.query("DELETE FROM ticket_table WHERE ticket_id = ?", [ id ], function(err, result){
        if(err){
            callback(err, null);
        }else{
            callback(null, result);
        }
    })
}

exports.adminLogin = (data, callback) => {
    connection.query("SELECT * FROM admin_table WHERE admin_email = ? and admin_password = ?", [ data.email, data.password ], function(err, result){
        if(err){
            callback(err, null);
        }else{
            callback(null, result);
        }
    })
}