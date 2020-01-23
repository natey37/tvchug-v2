
def ttyprompt(text,arr)
    prompt = TTY::Prompt.new
    prompt.select(text, arr)
end

def user_action(action)
    case action
<<<<<<< HEAD
    when "Exit", "Main Menu"
        system("clear")
=======
    when "exit", "Exit", "Main Menu"
>>>>>>> dc74b50ff9f87300e6424841b4832d3470da6e6a
        return main_menu

    when "Sign In"
        return sign_in

    when "New Account"
        return new_account
<<<<<<< HEAD
    when"View as Guest"
        system("clear")
        return guest
    when "View My Fav Shows", 
        system("clear")
=======

    when "View as Guest"
        $current_user = "Guest"
        return main_menu  

    when "View My Fav Shows"
>>>>>>> dc74b50ff9f87300e6424841b4832d3470da6e6a
        return myfav

    when "See Top Shows"
        return popular_shows 

    when "Search Shows", "Search", "Search Again"
        return search

    when "Favorite this show"
        return favorite

    when "Find Out More Info"
        return show_details

    when "Go back to Popular shows"
        return popular_shows
<<<<<<< HEAD
    when "Sign Out"
        system("clear")
        return welcome
=======

    when "Sign out"
        $current_user =nil
        welcome
>>>>>>> dc74b50ff9f87300e6424841b4832d3470da6e6a
    else
        #nothing
    end
end