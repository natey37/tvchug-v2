def search
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
    result
end

   def display_results(json_results) 
        arr = []
        hash = {}

        json_results["tv_shows"].each_with_index do |show,index|
            arr << "#{index+1}. #{show["name"]}"
            hash[index + 1] = show["id"]
        end
        arr << "Search again"
        arr << "Exit"

    prompt = TTY::Prompt.new
    choice = prompt.select("Results", arr)

    if choice == "Search again"
        search
    elsif choice == "Search again"
        exit
    end

    hash_key = choice.split(".")[0].to_i
    show_details(hash[hash_key])
end

def picked_show_prompt(show)
    system("clear")
    prompt = TTY::Prompt.new
    options = ["Favorite show", "Find Out More Info", "Exit"]
    prompt.select(show, options)
end

def show_details(id)
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

def on_show_menu
end


