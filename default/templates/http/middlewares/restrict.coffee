#
# access_token驗證中間件
#

config = require 'config'
restrict = require 'restrict'

module.exports = restrict
  baseUrl: config.eaccount.baseUrl
