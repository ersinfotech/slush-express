#
# Example
#

mongoose = require 'mongoose'

db = require '../connections/mongo'

app = require __base + '/http'

ObjectId = mongoose.Schema.Types.ObjectId

schema = new mongoose.Schema
  name: String

module.exports = db.model 'examples', schema

app.factory 'Example', (req, res, next) ->
  next null, module.exports
