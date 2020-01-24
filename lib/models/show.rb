class Show < ActiveRecord::Base
    has_many :favorites
    has_many :users, through: :favorites
    validates_uniqueness_of :episodate_id


    def num_of_favs
        self.favorites.count
    end

    def avg_rating
        # binding.pry
        arr_of_favs = self.favorites 
        favs = arr_of_favs.select{|fav| fav.rating != nil}
        if favs == []
            "no ratings"
        else favs.inject(:+) / favs.count.to_f
        end
    end 

end
