def favorite
    show = Show.create($current_show_hash)
    Favorite.create(show_id: show.id, user_id: $current_user.id)
    puts "Your Show has Been added to your Favorite"
    action = ttyprompt("What would you like to do next?",["View My Fav Shows", "Search Shows", "Main Menu"])
    user_action(action)  
end
