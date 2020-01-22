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
    end
end
