
module.exports =

  http:
    port: <%= httpPort %>

  session:
    secret: 'thisissecret'

  mongo:
    host: 'localhost'
    port: 27017
    database: 'example'
    user: null
    password: null
