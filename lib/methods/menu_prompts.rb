
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
    shows = JSON.parse(shows)
    display_results(shows)
end

def main_menu     
    # puts "Hello, #{user.user_name}"
    input = ttyprompt("Main Menu",["View My Fav Shows", "See Top Shows", "Search Shows"])
    if input == "Search Shows"
        show = search
        display_results(show)
    elsif input == "See Top Shows"
        user_choice = popular_shows
        ttyprompt("Choose an Option", ["Add show to Favorites", "See Show Details", "Go back to Popular Shows"])
        
    end
end

def exit
    main_menu
end


# puts "Please enter the name of a show!"
# search_show = gets.chomp
# search(search_show)
# elsif input == "See Top Shows"
# popular_shows
# binding.pry
# end




