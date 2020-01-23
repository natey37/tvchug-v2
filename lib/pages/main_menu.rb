def main_menu
    system("clear")
    if $current_user == "Guest" #guest options
        system("artii 'Hello, Guest!' --font slant")
        # puts "Hello, Guest"
        puts 
        action = ttyprompt("Main Menu",["See Top Shows", "Search Shows", "Sign In", "New Account","Return to Home Page"])
        user_action(action)

    else #regular user options 
        system("artii 'Hello, #{$current_user.user_name} !!!' --font slant")
        # puts "Hello, #{$current_user.user_name}!"
        action = ttyprompt("Main Menu",["View My Fav Shows", "See Top Shows", "Search Shows", "Sign Out"])
        user_action(action)
    end

end
