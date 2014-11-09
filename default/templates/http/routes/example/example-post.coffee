#
# 創建單個Example
#

module.exports = (req, res, next, Example) ->
  new Example
    name: Math.random()
  .saveAsync()
  .then ->
    res.end()
  .catch next
