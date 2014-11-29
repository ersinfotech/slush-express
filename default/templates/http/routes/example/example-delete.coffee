#
# 刪除例子
#

module.exports = (req, res, next, Example) ->
  {exampleId} = req.params

  Example.findByIdAndRemoveAsync exampleId
  .then (example) ->
    res.end()
  .catch next
