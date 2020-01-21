def search(string)
    prompt = TTY::Prompt.new
    result = RestClient.get("https://www.episodate.com/api/search?q=#{string}&page=1")
    result = JSON.parse(result)
    arr = []
    result["tv_shows"].each_with_index do |show,index|
        arr << "#{index+1}. #{show["name"]}"
    end
    arr << "Exit"
    choice = prompt.select("action?", arr)
end

def picked_show_prompt(show)
    system("clear")
    prompt = TTY::Prompt.new
    options = ["Favorite show", "Find Out More Info", "Exit"]
    prompt.select(show, options)
end


user_input = search("rick")

picked_show_prompt(user_input)
