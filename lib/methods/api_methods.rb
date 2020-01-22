def search #prompts a search and searches until it finds atleast one show, returns JSON
    prompt = TTY::Prompt.new
    search_keyword = prompt.ask("What would you like to Search?")

    result = RestClient.get("https://www.episodate.com/api/search?q=#{search_keyword}&page=1")
    result = JSON.parse(result)
    
    while result["tv_shows"] == [] 
        prompt = TTY::Prompt.new
        search_keyword = prompt.ask("No Results, Please Search again:")
        result = RestClient.get("https://www.episodate.com/api/search?q=#{search_keyword}&page=1")
        result = JSON.parse(result)
    end
    result = make_list(result)
    display_result(result)

end

def make_list(json_results) #takes JSON and lists items, add exit and search again, returns array
    arr = []
    hash = {}

    json_results["tv_shows"].each_with_index do |show,index|
        arr << "#{index+1}. #{show["name"]}"
        hash[index + 1] = show["id"]
    end
    arr << "Search again" 
    arr << "Exit"
end

def display_result(arr) #takes array, display and ask for selection, retruns EpisodateID if show selected

    prompt = TTY::Prompt.new
    choice = prompt.select("Results", arr)

    user_action(choice)

    hash_key = choice.split(".")[0].to_i
    hash[hash_key]
end

# def picked_show_prompt(show)
#     system("clear")
#     prompt = TTY::Prompt.new
#     prompt.select(show, ["Favorite show", "Find Out More Info", "Exit"])
# end

def show_details(id)
    # $current_show_id = id 
    result = RestClient.get("https://www.episodate.com/api/show-details?q=#{id}")
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
end

def show_details_hash(id)
    result = RestClient.get("https://www.episodate.com/api/show-details?q=#{id}")
    result = JSON.parse(result)
    show_details_hash = {
        name: "#{result["tvShow"]["name"]}", 
        start_date: "#{result["tvShow"]["start_date"]}",
        end_date: "#{result["tvShow"]["end_date"]}",
        network: "#{result["tvShow"]["network"]}",
        status: "#{result["tvShow"]["status"]}",
        permalink: "https://www.youtube.com/watch?v=#{result["tvShow"]["youtube_link"]}",
        episodate_id: id
    }
end 

def on_show_menu
end

def popular_shows 
    shows = RestClient.get("https://www.episodate.com/api/most-popular?page=1")
    shows = JSON.parse(shows)
    result = make_list(shows)
    show_id = display_result(result)
    show_details(show_id)
    user_action = ttyprompt("chose an option", ["add show to Favorite", "Go back to Popular shows"])
end
