class User < ActiveRecord::Base
    validates_uniqueness_of :user_name
    has_many :favorites
    has_many :shows, through: :favorites

    
end
