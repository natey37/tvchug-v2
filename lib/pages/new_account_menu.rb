def new_account
    prompt = TTY::Prompt.new
    
    result = prompt.collect do
        key(:first_name).ask('First Name?')
        key(:last_name).ask('Last Name?')
        key(:user_name).ask('User Name?')
        key(:password).mask('Password?')
    end
    $current_user = User.create(result)
<<<<<<< HEAD
    system("clear")
    puts "Hello, #{$current_user.user_name}"
=======
>>>>>>> dc74b50ff9f87300e6424841b4832d3470da6e6a
    main_menu
end


