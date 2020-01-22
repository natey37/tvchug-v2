
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
    shows["tv_shows"].each_with_index do |show,index|
        puts "#{index+1}. #{show["name"]}"
    end
end

def main_menu     
    # puts "Hello, #{user.user_name}"
    input = ttyprompt("Main Menu",["View My Fav Shows", "See Top Shows", "Search Shows"])
    if input == "Search Shows"
        show = search
        display_results(show)
    elsif input == "See Top Shows"
        system("clear")
        user_choice = popular_shows
        prompt = ttyprompt("Choose an Option", ["Add show to Favorites", "Go back to Popular Shows"])
            if prompt == "Add show to Favorites"

               show = Show.create(user_choice)
               Favorite.create(show_id: "#{show.id}", user_id: "#{self.id}")
            end 
            binding.pry
            #    Favorite.create(show_id: )
        
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




