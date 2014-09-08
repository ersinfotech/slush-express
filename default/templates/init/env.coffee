path = require 'path'

process.env.TZ = 'PRC'
process.env.NODE_CONFIG_DIR = path.normalize __dirname + '/../config'
process.env.NODE_ENV or= 'development'
