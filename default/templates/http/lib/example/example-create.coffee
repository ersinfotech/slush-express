
module.exports = (Example, res, next) ->
  new Example
    name: Math.random()
  .saveAsync()
  .then ->
    res.end()
  .catch next
