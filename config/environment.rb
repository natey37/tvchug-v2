require 'bundler'
Bundler.require
require 'tty-prompt'
require 'rest-client'
require 'Artii'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')

ActiveRecord::Base.logger = nil

require_all 'lib'

