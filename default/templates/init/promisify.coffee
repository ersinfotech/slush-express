Promise = require 'bluebird'

Promise.promisifyAll require 'fs'
Promise.promisifyAll require 'mongoose'
