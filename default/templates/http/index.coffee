time = process.hrtime()

express = require 'express'
config = require 'config'
moment = require 'moment'

app = module.exports = express()

app.use require './lib'

app.listen config.http.port, ->
  time = process.hrtime time
  console.log "#{moment().format 'YYYY-MM-DD HH:mm:ss'} http service is listening on port #{config.http.port} in #{process.env.NODE_ENV} mode used #{time[0]}.#{time[1]} seconds"