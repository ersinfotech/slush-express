#
# 多筆例子
#

Promise = require 'bluebird'

Example = require __base + '/common/models/example'

module.exports = (req, res, next) ->
  {name} = req.query

  query = Example.find()
  .lean()

  if name
    query.regex new RegExp name, 'i'

  Promise.all [
    query.execAsync()
    query.countAsync()
  ]
  .spread (data, count) ->
    res.send
      data: data
      count: count
  .catch next
