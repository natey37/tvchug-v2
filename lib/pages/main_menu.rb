def main_menu     
    puts "Hello, #{$current_user.user_name}"
    action = ttyprompt("Main Menu",["View My Fav Shows", "See Top Shows", "Search Shows", "Sign Out"])
    user_action(action)
end
