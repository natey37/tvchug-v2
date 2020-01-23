def welcome
    system("clear")

    puts
    puts

    system("artii 'TV Chug' --font slant")
    puts
    user_input = ttyprompt( 'WELCOME TO TV CHUG', ["Sign In", "New Account", "View as Guest", "About Us", "Exit Program"])
    user_action(user_input)
end