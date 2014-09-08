
module.exports = (Example, res, next) ->
  Example
  .find()
  .execAsync()
  .then (data) ->
    res.send data
  .catch next
