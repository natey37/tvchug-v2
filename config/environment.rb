require 'bundler'
Bundler.require
require 'tty-prompt'
require 'rest-client'

ActiveRecord::Base.logger = nil

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
# if ENV[:environment] === "DEVELOPMENT"
#     ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
# elsif ENV[:environment] === "TEST"
#     ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/test.db')
# end


require_all 'lib'

