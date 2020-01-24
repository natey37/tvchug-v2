def myfav
    $current_user = User.all.find_by(user_name: $current_user.user_name) #refreshes database

    database = $current_user.shows
    
    arr = []
    hash = {}
    database.each do |show|
        arr << show.name
        hash[show.name] = show.episodate_id
    end
    arr << "Exit" 
    
    
    system("artii 'Your Fav Shows' --font slant")
    choice = ttyprompt("Here are your favorite shows. Click to see more details or exit", arr)

    if choice == "Exit"
        user_action(choice)
    else
        $current_show_id =  hash[choice]
        show_details
    end


end
