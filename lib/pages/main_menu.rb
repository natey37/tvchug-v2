def main_menu
    system("clear")
    if $current_user == "Guest" #guest options
        system("artii 'Hello, Guest!' --font slant")
        puts 
        ttyprompt("Main Menu",["See Top Shows", "Search Shows", "Sign In", "New Account","Return to Home Page"])

    else #regular user options 
        system("artii 'Hello, #{$current_user.user_name} !!!' --font slant")
        ttyprompt("Main Menu",["View My Fav Shows", "See Top Shows", "Search Shows","Sho'ho", "View Users", "Sign Out"])
    end

end
