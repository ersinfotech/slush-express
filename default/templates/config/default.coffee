#
# 配置文件
#

module.exports =

  clientId: null

  http:
    port: process.env.PORT or 3000
    baseUrl: ''

  mongo:
    uri: null
    mongos: false
    host: 'localhost'
    port: 27017
    database: 'example'
    user: null
    password: null

  eadmin:
    baseUrl: 'http://eadmin-api.ersinfotech.com'

  elog:
    baseUrl: 'http://elog-api.ers.local'

  email:
    baseUrl: 'http://email-api.ers.local'
