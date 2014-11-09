#
# 返回Example列表
#

module.exports = (req, res, next, Example) ->
  Example
  .find()
  .execAsync()
  .then (data) ->
    res.send data
  .catch next
