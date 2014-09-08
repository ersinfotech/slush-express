{spawn} = require 'child_process'

gulp = require 'gulp'
coffeelint = require 'gulp-coffeelint'
cache = require 'gulp-cached'
plumber = require 'gulp-plumber'
{argv} = require 'yargs'

process.env.NODE_ENV = if argv.P then 'production' else 'development'

node = null

paths =
  coffee: [
    '**/*.coffee'
    '!**/node_modules/**/*.coffee'
  ]

gulp.task 'lint', ->
  gulp.src paths.coffee
  .pipe plumber()
  .pipe cache 'lint'
  .pipe coffeelint()
  .pipe coffeelint.reporter()

gulp.task 'http', ->
  node?.kill()
  node = spawn "node", ["index.js"], stdio: 'inherit'

gulp.task 'watch', ['http'], ->
  gulp.watch paths.coffee, ['http', 'lint']

gulp.task 'default', ['watch']
