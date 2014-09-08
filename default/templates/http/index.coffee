require '../init'

express = require 'express'
cookieParser = require 'cookie-parser'
cookieSession = require 'cookie-session'
bodyParser = require 'body-parser'
multer = require 'multer'
config = require 'config'

app = module.exports = express()

app.use bodyParser.json()
app.use bodyParser.urlencoded extended: false
app.use multer()
app.use cookieParser()
app.use cookieSession secret: config.session.secret

require '../models'

app.use require './lib'
