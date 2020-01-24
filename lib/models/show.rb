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
        favorites = favs.map{|fav| fav.rating}
        if favorites == []
            "n/a"
        else favorites.inject(:+) / favorites.count.to_f
        end
    end 

end
