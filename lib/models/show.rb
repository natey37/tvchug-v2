class Show < ActiveRecord::Base
    has_many :favorites
    has_many :users, through: :favorites
    validates_uniqueness_of :episodate_id
end
