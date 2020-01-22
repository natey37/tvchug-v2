def show_details
    # $current_show_id = id 
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
        episodate_id: $current_show_id
    }

    action = ttyprompt("Options",["Favorite this show", "exit"])
    user_action(action)

end

