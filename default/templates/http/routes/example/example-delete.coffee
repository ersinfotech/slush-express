#
# 刪除例子
#

Example = require __base + '/common/models/example'

module.exports = (req, res, next) ->
  {exampleId} = req.params

  Example.findByIdAndRemove exampleId
  .execAsync()
  .then (example) ->
    res.end()
  .catch next
