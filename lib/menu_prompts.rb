
def ttyprompt(text,arr)
    prompt = TTY::Prompt.new
    prompt.select(text, arr)
end

def welcome
    system("clear")

    puts
    puts

    puts "TTTTTTT VV     VV     CCCCC  hh                      "
    puts "  TTT   VV     VV    CC    C hh      uu   uu  gggggg "
    puts "  TTT    VV   VV     CC      hhhhhh  uu   uu gg   gg "
    puts "  TTT     VV VV      CC    C hh   hh uu   uu ggggggg "
    puts "  TTT      VVV        CCCCC  hh   hh  uuuu u      gg "
    puts "                                               ggggg " 
        puts
        ttyprompt( 'WELCOME TO TV CHUG', ["Sign In", "New Account", "View as Guest"])
    end

def popular_shows 
    shows = RestClient.get("https://www.episodate.com/api/most-popular?page=1")
    shows = JSON.parse(popular_shows)
    shows["tv_shows"].each_with_index do |show,index|
        puts "#{index+1}. #{show["name"]}"
    end
end

def main_menu 
    # puts "Hello, #{user.user_name}"
    ttyprompt("Main Menu",["View My Fav Shows", "See Top Shows", "Search Shows"])
end







# def search(string)
#     prompt = TTY::Prompt.new
#     result = RestClient.get("https://www.episodate.com/api/search?q=#{string}&page=1")
#     result = JSON.parse(result)
#     arr = []
#     result["tv_shows"].each_with_index do |show,index|
#         arr << "#{index+1}. #{show["name"]}"
#     end
#     arr << "Exit"
#     choice = prompt.select("action?", arr)
# end

# def picked_show_prompt(show)
#     system("clear")
#     prompt = TTY::Prompt.new
#     options = ["Favorite show", "Find Out More Info", "Exit"]
#     prompt.select(show, options)
# end


# user_input = search("rick")

# picked_show_prompt(user_input)
