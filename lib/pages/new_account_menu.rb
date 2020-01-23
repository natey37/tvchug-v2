def new_account
    prompt = TTY::Prompt.new
    
    result = prompt.collect do
        key(:first_name).ask('First Name?')
        key(:last_name).ask('Last Name?')
        key(:user_name).ask('User Name?')
        key(:password).mask('Password?')
    end
    $current_user = User.create(result)
    main_menu
end


