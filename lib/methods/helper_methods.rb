
def ttyprompt(text,arr)
    prompt = TTY::Prompt.new
    prompt.select(text, arr)
end

def user_action(action)
    case action
    when "exit" 
        return main_menu
    when "search again"
        return search
    when "Sign In"
        return sign_in
    when "New Account"
        return new_account
    when"View as Guest"
        #need stuff here 
    when "View My Fav Shows"
        #need stuff
    when "See Top Shows"
        #need stuff
    when "Search Shows"
        return search
    when "Add show to Favorite" 
        #create new objects
    when "Find Out More Info"
        return show_details(current_show_id)
    when "Go back to Popular shows"
        return popular_shows
    else
        #nothign
    end
end