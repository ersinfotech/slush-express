#
# 修改例子
#

Example = require __base + '/common/models/example'

module.exports = (req, res, next) ->
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
