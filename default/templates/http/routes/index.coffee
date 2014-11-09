#
# 註冊路由
#

express = require 'express'

app = module.exports = express.Router()

app.route '/examples'
.get require './example/example-get'
.post require './example/example-post'

app.route '/examples/create'
.get require './example/example-post'
