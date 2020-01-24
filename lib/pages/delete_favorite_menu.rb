def delete_favorite
    show_obj = Show.all.find_by(episodate_id: $current_show_id)
    show = Favorite.find_by(show_id: show_obj.id, user_id: $current_user.id)
    show.destroy


    print_ascii('Favorite Deleted')

    puts "Your Show has been Removed from your Favorites"
    ttyprompt("What would you like to do next?",["View My Fav Shows", "Search Shows", "Main Menu"])


end
