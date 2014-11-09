#
# Example
#

mongoose = require 'mongoose'
config = require 'config'

db = require '../connections/mongo'
app = require config.basename + '/http'

ObjectId = mongoose.Schema.Types.ObjectId

schema = new mongoose.Schema
  name: String

module.exports = db.model 'examples', schema

app.factory 'Example', (req, res, next) ->
  next null, module.exports
