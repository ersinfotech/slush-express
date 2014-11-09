#
# 配置文件
#

path = require 'path'

module.exports =

  basename: path.normalize __dirname + '/..'

  http:
    port: process.env.PORT or <%= httpPort %>

  session:
    secret: 'thisissecret'

  mongo:
    host: 'localhost'
    port: 27017
    database: 'example'
    user: null
    password: null
