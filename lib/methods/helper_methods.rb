
def ttyprompt(text,arr)
    prompt = TTY::Prompt.new
    prompt.select(text, arr)
end

def user_action(action)
    case action
    when "exit", "Exit", "Main Menu"
        return main_menu

    when "Sign In"
        return sign_in

    when "New Account"
        return new_account

    when "View as Guest"
        $current_user = "Guest"
        return main_menu  

    when "View My Fav Shows"
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

    when "Sign Out"
        $current_user =nil
        welcome
    else
        #nothing
    end
end