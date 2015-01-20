//
// 運行服務
//

var time = process.hrtime();

require('./init');

var config = require('config');
var moment = require('moment');
var numeral = require('numeral');

var app = require('./http');

app.listen(config.http.port, function() {
  var diff = process.hrtime(time);
  var second = (diff[0] * 1e9 + diff[1]) / 1e9;
  console.log("%s http service is listening on port %s in %s mode used %s seconds",
    moment().format('YYYY-MM-DD HH:mm:ss'), config.http.port, process.env.NODE_ENV, numeral(second).format('0.00'));
});
