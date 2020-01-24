def view_users
    prompt = TTY::Prompt.new
    user_names = User.all.map{|user| user.user_name}
    action = prompt.select("Select a User", user_names)
end 