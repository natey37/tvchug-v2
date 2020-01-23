def community 
    all_shows = Show.all
    sorted = all_shows.sort_by{|show| show.num_of_favs}.reverse
    sorted = sorted[0..29]

    arr = []
    hash = {}

    sorted.each_with_index do |show,index|
        arr << "#{index+1}. #{show[:name]}  favs:#{show.num_of_favs}  "
        hash[index + 1] = show[:episodate_id]

    end
    arr << "Search Again" 
    arr << "Exit"

    
    choice = ttyprompt("Results", arr)

    if choice == "Exit" || choice == "Search Again" 
        user_action(choice)
    else
        hash_key = choice.split(".")[0].to_i
        $current_show_id =  hash[hash_key]
        show_details
    end

end
