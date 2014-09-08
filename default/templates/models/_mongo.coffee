mongoose = require 'mongoose'
moment = require 'moment'
config = require 'config'

connection = module.exports = mongoose.createConnection "mongodb://#{config.mongo.host}:#{config.mongo.port}/#{config.mongo.database}",
  server:
    poolSize: config.mongo.poolSize or 5
    keepAlive: 1
  user: config.mongo.user
  pass: config.mongo.password

connection.on 'error', (err) ->
  console.error ''
  console.error "[ERROR] #{moment().format('YYYY-MM-DD HH:mm:ss')} Handled error"
  console.error err.stack
