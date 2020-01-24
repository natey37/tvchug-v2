def delete_favorite
    show_obj = Show.all.find_by(episodate_id: $current_show_id)
    show = Favorite.find_by(show_id: show_obj.id, user_id: $current_user.id)
    show.destroy



    system("artii 'FAVORITE DELETED' --font slant")

    puts "Your Show has been Removed from your Favorites"
    action = ttyprompt("What would you like to do next?",["View My Fav Shows", "Search Shows", "Main Menu"])
    user_action(action)  

end
