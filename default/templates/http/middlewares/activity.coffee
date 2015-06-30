#
# elog活動中間件
#

elogActivity = require '@ersinfotech/elog-activity'
config = require 'config'

module.exports = elogActivity
  baseUrl: config.elog.baseUrl
