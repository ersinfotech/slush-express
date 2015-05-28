#
# 註冊路由
#

express = require 'express'
e18n = require 'e18n'
raml = require '@ersinfotech/raml'
config = require 'config'

app = module.exports = express.Router()

app.use '/raml', raml
  path: __base + '/raml'
  baseUrl: config.http.baseUrl
  clientId: config.clientId
  eadminBaseUrl: config.eadmin.baseUrl
e18n.use app

# 例子
exampleGet = require './example/example-get'

app.route '/examples'
.get require './example/example-gets'
.post require('./example/example-post'), exampleGet

app.route '/examples/:exampleId'
.get exampleGet
.put require('./example/example-put'), exampleGet
.delete require './example/example-delete'
