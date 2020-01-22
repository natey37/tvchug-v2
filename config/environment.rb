require 'bundler'
Bundler.require
require 'tty-prompt'
require 'rest-client'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')


# ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/test.db')


require_all 'lib'

