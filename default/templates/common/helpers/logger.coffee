bunyan = require 'bunyan'
config = require 'config'
packageJson = require __base + '/package.json'

module.exports = bunyan.createLogger
  name: config.clientId or packageJson.name
  streams: [
    stream: process.stdout
  ,
    path: config.logPath
  ]
