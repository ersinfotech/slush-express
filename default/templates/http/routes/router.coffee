#
# 註冊路由
#

express = require 'express'

app = module.exports = express.Router()

# 例子
exampleGet = require './example/example-get'

app.route '/examples'
.get require './example/example-gets'
.post require('./example/example-post'), exampleGet

app.route '/examples/:exampleId'
.get exampleGet
.put require('./example/example-put'), exampleGet
.delete require './example/example-delete'
