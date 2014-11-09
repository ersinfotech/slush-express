#
# express app對象
#

require '../init'

express = require 'express'
cookieParser = require 'cookie-parser'
cookieSession = require 'cookie-session'
bodyParser = require 'body-parser'
multer = require 'multer'
config = require 'config'
moment = require 'moment'

# 創建express對象
app = module.exports = express()

# 註冊model到express-di
require config.basename + '/common/models'

# 需要掛載內部應用的話，掛到http/lib下，e.g. app.use '/oauth', require './lib/eauth-api/http'

# 中間件
app.use bodyParser.json()
app.use bodyParser.urlencoded extended: false
app.use multer()
app.use cookieParser()
app.use cookieSession secret: config.session.secret

# 掛載路由
app.use require './routes'

#
# Error handler
#

app.use (err, req, res, next) ->
  console.error ''
  console.error "[ERROR] #{moment().format('YYYY-MM-DD HH:mm:ss')} Handled error"
  console.error err.stack

  res
  .status 500
  .send error: err.message

process.on 'uncaughtException', (err) ->
  console.error ''
  console.error "[ERROR] #{moment().format('YYYY-MM-DD HH:mm:ss')} Uncaught exception"
  console.error err.stack

  process.exit()
