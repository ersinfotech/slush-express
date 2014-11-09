#
# 配置環境變量
#

path = require 'path'

process.env.TZ = 'PRC'
process.env.NODE_ENV or= 'development'
process.env.NODE_CONFIG_DIR = path.normalize __dirname + '/../config'
