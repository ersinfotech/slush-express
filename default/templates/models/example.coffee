mongoose = require 'mongoose'

db = require './_mongo'
app = require '../http'

schema = new mongoose.Schema
  name: String

module.exports = db.model 'examples', schema

app.factory 'Example', (req, res, next) ->
  next null, module.exports
