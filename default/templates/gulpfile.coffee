gulp = require 'gulp'
coffeelint = require 'gulp-coffeelint'
cache = require 'gulp-cached'
plumber = require 'gulp-plumber'
shell = require 'gulp-shell'
{argv} = require 'yargs'

env = if argv.P then 'production' else 'development'

paths =
  coffee: [
    '**/*.coffee'
    '!node_modules/**/*.coffee'
  ]

gulp.task 'lint', ->
  gulp.src paths.coffee
  .pipe plumber()
  .pipe cache 'lint'
  .pipe coffeelint()
  .pipe coffeelint.reporter()

gulp.task 'http', ->
  do shell.task "NODE_ENV=#{env} node-dev index.js"
  false

gulp.task 'watch', ['http'], ->
  gulp.watch paths.coffee, ['lint']

gulp.task 'default', ['watch']
