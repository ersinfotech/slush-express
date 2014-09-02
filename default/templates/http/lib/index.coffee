express = require 'express'

app = module.exports = express.Router()

app.route '/examples'
.get require './example/example-list'