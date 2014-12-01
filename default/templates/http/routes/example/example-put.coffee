#
# 修改例子
#

module.exports = (req, res, next, Example) ->
  {exampleId} = req.params
  {name} = req.body

  unless name
    return next new Error400 'name required'

  Example.findByIdAndUpdate exampleId,
    name: name
  .execAsync()
  .then ->
    next()
  .catch next
