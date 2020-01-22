def search(string)
    prompt = TTY::Prompt.new
    result = RestClient.get("https://www.episodate.com/api/search?q=#{string}&page=1")
    result = JSON.parse(result)
    arr = []
    hash = {}
    result["tv_shows"].each_with_index do |show,index|
        arr << "#{index+1}. #{show["name"]}"
        hash[index+1] = show["id"]
    end
    arr << "Exit"
    choice = prompt.select("action?", arr)
    show_details(hash[choice.split(".")[0]])
    puts hash[choice.split(".")[0]]
end

def picked_show_prompt(show)
    system("clear")
    prompt = TTY::Prompt.new
    options = ["Favorite show", "Find Out More Info", "Exit"]
    prompt.select(show, options)
end
35624
def show_details(id)
    result = RestClient.get("https://www.episodate.com/api/show-details?q=#{id}")
    puts "https://www.episodate.com/api/show-details?q=#{id}"
    result = JSON.parse(result)
    puts "Name: #{result["tvShow"]["name"]}"
    puts "Description: #{result["tvShow"]["description"]}"
    puts "Start Date: #{result["tvShow"]["start_date"]}"
    puts "End Date: #{result["tvShow"]["end_date"]}"
    puts "Network: #{result["tvShow"]["network"]}"
    puts "Status: #{result["tvShow"]["status"]}"
    puts "Trailer: https://www.youtube.com/results?search_query=#{result["tvShow"]["youtube_link"]}"
    puts "Genres: #{result["tvShow"]["genres"]}"
    puts "# of Episodes: #{result["tvShow"]["episodes"].count}"
end


