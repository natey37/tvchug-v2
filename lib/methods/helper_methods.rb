
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
        sign_in
    when "New Account"
        return new_account
    when"View as Guest"
        #need stuff here 
    when "View My Fav Shows"
        return myfav
    when "See Top Shows"
        return popular_shows 
    when "Search Shows"
        return search
    when "Favorite this show"
        favorite
    when "Find Out More Info"
        return show_details(current_show_id)
    when "Go back to Popular shows"
        return popular_shows
    else
        #nothign
    end
end