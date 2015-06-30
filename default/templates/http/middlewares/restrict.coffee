#
# access_token驗證中間件
#

config = require 'config'
restrict = require '@ersinfotech/restrict'

module.exports = restrict
  baseUrl: config.eadmin.baseUrl
