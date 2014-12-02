#
# 刪除例子
#

module.exports = (req, res, next, Example) ->
  {exampleId} = req.params

  Example.findByIdAndRemove exampleId
  .execAsync()
  .then (example) ->
    res.end()
  .catch next
