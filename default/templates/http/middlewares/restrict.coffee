#
# access_token驗證中間件
#

config = require 'config'
Restrict = require 'restrict'

module.exports = Restrict
  baseUrl: config.eaccount.baseUrl
