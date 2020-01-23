class Show < ActiveRecord::Base
    has_many :favorites
    has_many :users, through: :favorites
    validates_uniqueness_of :episodate_id


    def num_of_favs
        self.favorites.count
    end

end
