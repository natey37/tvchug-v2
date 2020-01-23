def guest_error #used on fav_confirmation
    action = ttyprompt("Cannot Favorite as Guest. Please Sign in or Create an Account", ["Sign In", "New Account", "Search Shows", "Main Menu"])
    user_action(action)
end
