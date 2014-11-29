#
# 創建例子
#

module.exports = (req, res, next, Example) ->
  {name} = req.body

  unless name
    return next new Error400 'name required'

  Example.createAsync
    name: name
  .then (example) ->
    req.params.exampleId = example._id
    next()
  .catch next
