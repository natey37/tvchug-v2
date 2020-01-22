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
        user_input = ttyprompt( 'WELCOME TO TV CHUG', ["Sign In", "New Account", "View as Guest"])
        user_action(user_input)
end

def popular_shows 
    shows = RestClient.get("https://www.episodate.com/api/most-popular?page=1")
    shows = JSON.parse(shows)
    shows["tv_shows"].each_with_index do |show,index|
        puts "#{index+1}. #{show["name"]}"
    end
end

def main_menu     
    # puts "Hello, #{user.user_name}"
    user_input = ttyprompt("Main Menu",["View My Fav Shows", "See Top Shows", "Search Shows"])
    user_action(user_input)
end

def popular_shows_menu
    ttyprompt("Choose an Option", ["Add show to Favorites", "See Show Details", "Go back to Popular Shows"])
end




# puts "Please enter the name of a show!"
# search_show = gets.chomp
# search(search_show)
# elsif input == "See Top Shows"
# popular_shows
# binding.pry
# end




