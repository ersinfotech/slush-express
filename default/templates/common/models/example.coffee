#
# Example
#

mongoose = require 'mongoose'

db = require '../connections/mongo'

ObjectId = mongoose.Schema.Types.ObjectId

schema = new mongoose.Schema
  name: String

module.exports = db.model 'examples', schema
