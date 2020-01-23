class User < ActiveRecord::Base
    validates_uniqueness_of :user_name
    has_many :favorites
    has_many :shows, through: :favorites

    def has_show_episodate_id_in_fav(id)
        all_ids = self.shows.map do |show|
            show.episodate_id
        end
        all_ids.include?(id)
    end

end
