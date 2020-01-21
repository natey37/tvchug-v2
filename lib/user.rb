class User < ActiveRecord::Base
    has_many :favorites
    has_many :shows, through: :favorites
end
