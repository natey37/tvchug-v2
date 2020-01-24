def sho_ho
    system("artii 'FEELING LUCKY?' --font slant")
    random_number = rand(68366)
    $current_show_id = random_number
    result = RestClient.get("https://www.episodate.com/api/show-details?q=#{$current_show_id}")
    result = JSON.parse(result)
    puts "Name: #{result["tvShow"]["name"]}"
    puts "Description: #{result["tvShow"]["description"]}"
    puts "Start Date: #{result["tvShow"]["start_date"]}"
    puts "End Date: #{result["tvShow"]["end_date"]}"
    puts "Network: #{result["tvShow"]["network"]}"
    puts "Status: #{result["tvShow"]["status"]}"
    puts "Trailer: https://www.youtube.com/watch?v=#{result["tvShow"]["youtube_link"]}"
    puts "Genres: #{result["tvShow"]["genres"]}"
    puts "# of Episodes: #{result["tvShow"]["episodes"].count}"

    $current_show_hash = {
        name: "#{result["tvShow"]["name"]}", 
        start_date: "#{result["tvShow"]["start_date"]}",
        end_date: "#{result["tvShow"]["end_date"]}",
        network: "#{result["tvShow"]["network"]}",
        status: "#{result["tvShow"]["status"]}",
        permalink: "https://www.youtube.com/watch?v=#{result["tvShow"]["youtube_link"]}",
        episodate_id: "#{$current_show_id}"
    }

    if $current_user == "Guest"
        action = ttyprompt("Options",["Sho'ho", "See Top Shows", "Search Shows", "Exit"])
        user_action(action)  
    elsif $current_user.has_show_episodate_id_in_fav($current_show_id)
        action = ttyprompt("Options",["Delete Favorite", "Sho'ho", "Search Shows", "Exit"])
        user_action(action)
    else
        action = ttyprompt("Options",["Favorite This Show", "Sho'ho", "Search Shows", "Exit"])
        user_action(action)
    end
end 