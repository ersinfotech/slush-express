express = require 'express'

app = module.exports = express.Router()

app.route '/examples'
.get require './example/example-list'
.post require './example/example-create'

app.route '/examples/create'
.get require './example/example-create'
