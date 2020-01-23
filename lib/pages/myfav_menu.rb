def myfav
    database = $current_user.shows
    
    arr = []
    hash = {}
    database.each do |show|
        arr << show.name
        hash[show.name] = show.episodate_id
    end
    arr << "exit" 

    action = ttyprompt("Here are your favorite shows. Click to see more details or exit", arr)

    user_action(action)
    $current_show_id =  hash[action]

    show_details




end