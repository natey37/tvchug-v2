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

    choice = ttyprompt("Results", arr)

    user_action(choice)

    hash_key = choice.split(".")[0].to_i
    $current_show_id =  hash[hash_key]

    show_details

end