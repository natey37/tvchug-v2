
def ttyprompt(text,arr)
    prompt = TTY::Prompt.new
    prompt.select(text, arr)
end

def user_action(action)
    case action
    when "exit", "Main Menu"
        system("clear")
        return main_menu
    when "search again"
        system("clear")
        return search
    when "Sign In"
        system("clear")
        return sign_in
    when "New Account"
        system("clear")
        return new_account
    when"View as Guest"
        #need stuff here 
    when "View My Fav Shows", 
        system("clear")
        return myfav
    when "See Top Shows"
        system("clear")
        return popular_shows 
    when "Search Shows"
        system("clear")
        return search
    when "Favorite this show"
        system("clear")
        return favorite
    when "Find Out More Info"
        system("clear")
        return show_details(current_show_id)
    when "Go back to Popular shows"
        system("clear")
        return popular_shows
    else
        #nothign
    end
end