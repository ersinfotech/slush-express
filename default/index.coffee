path = require 'path'

gulp = require 'gulp'
inquirer = require 'inquirer'
conflict = require 'gulp-conflict'
template = require 'gulp-template'
rename = require 'gulp-rename'
Promise = require 'bluebird'

gulp.task 'default', ->

  new Promise (resolve, reject) ->
    inquirer.prompt [
      type: 'input'
      name: 'name'
      message: 'App name'
      default: -> path.basename process.cwd()
    ,
      type: 'input'
      name: 'version'
      message: 'Version'
      default: '0.0.0'
    ,
      type: 'input'
      name: 'httpPort'
      message: 'Port used for http develop'
      default: 3000
    ,
      type: 'confirm'
      name: 'moveon'
      message: 'Continue?'
    ],
      resolve

  .then (answers) ->

    return Promise.reject 'Cancel' unless answers.moveon

    Promise.all [
      new Promise (resolve, reject) ->
        gulp.src __dirname + '/templates/**/_.*'
        .pipe template answers
        .pipe rename (path) ->
          path.basename = path.basename.replace /^_\./, ''
          path
        .pipe conflict '.'
        .pipe gulp.dest '.'
        .on 'end', resolve
    ,
      new Promise (resolve, reject) ->
        gulp.src [
          __dirname + '/templates/**'
          "!" + __dirname + "/templates/**/_.*"
        ], {dot: true}
        .pipe conflict '.'
        .pipe gulp.dest '.'
        .on 'end', resolve
    ]

  .catch console.error

