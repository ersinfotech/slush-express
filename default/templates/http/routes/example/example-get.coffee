#
# 單筆例子
#

module.exports = (req, res, next, Example) ->
  {exampleId} = req.params

  Example.findByIdAsync exampleId
  .then (example) ->
    res.send example
  .catch next
