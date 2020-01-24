def view_users
    print_ascii("View Users")
    prompt = TTY::Prompt.new
    user_names = User.all.map{|user| user.user_name}
    user_names << "Exit"
    choice = prompt.select("Select a User", user_names)
    if choice == "Exit"
        user_action(choice)
    else 
    users_id = User.all.find{|user| user.user_name == choice}.id
    favorites = Favorite.all.select{|fav| fav.user_id == users_id}
    show_ids = favorites.map{|fav| fav.show_id}
    shows = Show.all.select{|show| show_ids.include?(show.id)}
    show_names = shows.map{|show| show.name}
    show_names << "Back"
    end
    system("clear")
    print_ascii("View #{choice}'s")
    print_ascii("Fav Shows!")
    choice = prompt.select("Select a User", show_names)
    if choice == "Back"
       user_action(choice)
    else 
        show = Show.find{|show| show.name == choice}
        episodateid = show.episodate_id
        $current_show_id = episodateid
        show_details 
    end 


end 