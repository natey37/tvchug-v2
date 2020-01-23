
def ttyprompt(text,arr)
    prompt = TTY::Prompt.new
    prompt.select(text, arr)
end

def user_action(action)
    case action
    when "exit", "Exit", "Main Menu"
        system("clear")
        return main_menu

    when "Sign In"
        system("clear")
        return sign_in

    when "New Account"
        system("clear")
        return new_account

    when "View as Guest"
        system("clear")
        $current_user = "Guest"
        return main_menu  

    when "View My Fav Shows"
        system("clear")
        return myfav

    when "See Top Shows", "Go back to Popular shows"
        system("clear")
        return community 

    when "Search Shows", "Search", "Search Again"
        system("clear")
        return search

    when "Favorite this show"
        system("clear")
        return favorite

    when "Find Out More Info"
        system("clear")
        return show_details

    when "Sign Out", "Return to Home Page"
        $current_user = "Guest"
        welcome

    when "Exit Program"
        goodbye
    when "About Us"
        system("clear")
         about_us
    else
        puts "Error! Bug Found"
    end
end