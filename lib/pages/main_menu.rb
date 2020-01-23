def main_menu
    
    if $current_user == "Guest" #guest options
        puts "Hello, Guest"
        puts 
        action = ttyprompt("Main Menu",["See Top Shows", "Search Shows", "Sign In", "New Account"])
        user_action(action)

    else #regular user options 
        puts "Hello, #{$current_user.user_name}!"
        action = ttyprompt("Main Menu",["View My Fav Shows", "See Top Shows", "Search Shows", "Sign Out"])
        user_action(action)
    end

end
