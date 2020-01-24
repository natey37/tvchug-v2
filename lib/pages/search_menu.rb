def search #prompts a search and searches until it finds atleast one show, returns JSON
    prompt = TTY::Prompt.new
    system("artii 'SEARCH...' --font slant")

    search_keyword = prompt.ask("Search by Name:")

    page1 = RestClient.get("https://www.episodate.com/api/search?q=#{search_keyword}&page=1")
    result = JSON.parse(page1)["tv_shows"]

    while result == [] 
        prompt = TTY::Prompt.new
        search_keyword = prompt.ask("No Results, Please Search again:")
        result = RestClient.get("https://www.episodate.com/api/search?q=#{search_keyword}&page=1")
        result = JSON.parse(result)["tv_shows"]
    end

    if result.count == 20
        page2 = RestClient.get("https://www.episodate.com/api/search?q=#{search_keyword}&page=2")
        page2 = JSON.parse(page2)["tv_shows"]
        result = result.concat(page2)
    end

    if result.count == 40
        page3 = RestClient.get("https://www.episodate.com/api/search?q=#{search_keyword}&page=3")
        page3 = JSON.parse(page3)["tv_shows"]
        result = result.concat(page3)
    end

    arr = []
    hash = {}

    result.each_with_index do |show,index|
        arr << "#{index+1}. #{show["name"]}"
        hash[index + 1] = show["id"]

    end
    arr << "Search Again" 
    arr << "Exit"

    prompt = TTY::Prompt.new
    choice = prompt("Results", arr)

    if choice == "Exit" || choice == "Search Again" 
        user_action(choice)
    else
        hash_key = choice.split(".")[0].to_i
        $current_show_id =  hash[hash_key]
        show_details
    end

end