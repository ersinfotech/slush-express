#
# 單筆例子
#

Example = require __base + '/common/models/example'

module.exports = (req, res, next) ->
  {exampleId} = req.params

  Example.findById exampleId
  .execAsync()
  .then (example) ->
    res.send example
  .catch next
