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