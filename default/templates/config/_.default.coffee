#
# 配置文件
#

module.exports =

  http:
    port: process.env.PORT or <%= port %>

  mongo:
    uri: null
    mongos: false
    host: 'localhost'
    port: 27017
    database: 'example'
    user: null
    password: null

  eaccount:
    baseUrl: 'http://eaccount-api.ers.local'

  elog:
    baseUrl: 'http://elog-api.ers.local'

  email:
    baseUrl: 'http://email-api.ers.local'
