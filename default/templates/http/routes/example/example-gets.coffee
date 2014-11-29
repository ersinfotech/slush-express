#
# 多筆例子
#

Promise = require 'bluebird'

module.exports = (req, res, next, Example) ->
  {name} = req.query

  query = Example
  .find()
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
