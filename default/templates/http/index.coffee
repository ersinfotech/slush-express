#
# express app對象
#

require '../init'

express = require 'express'
cors = require 'cors'
bodyParser = require 'body-parser'
multer = require 'multer'

logger = require __base + '/common/helpers/logger'

# 創建express對象
app = module.exports = express()

# 中間件
app.use cors()
app.use bodyParser.json()
app.use bodyParser.urlencoded extended: true
app.use multer()

# 掛載路由
app.use require './routes/router'

# Error handler
app.use (err, req, res, next) ->
  if err instanceof Error400
    return res.status(400).send error: err.message
  logger.error err
  res.status(500).send error: err.message

# Process error handler
process.on 'uncaughtException', (err) ->
  logger.fatal err
  process.exit()
