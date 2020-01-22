require_relative '../config/environment'

user_input = nil
user = nil

main_menu
# user_input = welcome 


if user_input == "Sign In"
    sign_in
elsif user_input == "New Account"
    user = new_account
    main_menu
else 
    #guest_account
end