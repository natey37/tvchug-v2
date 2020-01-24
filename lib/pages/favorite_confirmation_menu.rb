def favorite


    if $current_user == "Guest" #check for guest
        guest_error 
    end

    print_ascii('Show Added')

    
    if Show.find_by(episodate_id: $current_show_id) != nil #check to make shoe doesnt already exists in db
        show = Show.find_by(episodate_id: $current_show_id)
    else # create show if it does not exist
        show = Show.create($current_show_hash)
    end

    Favorite.create(show_id: show.id, user_id: $current_user.id) #create favorite
    puts "Your Show has Been added to your Favorites"
    ttyprompt("What would you like to do next?",["View My Fav Shows", "Search Shows", "Main Menu"])
end
