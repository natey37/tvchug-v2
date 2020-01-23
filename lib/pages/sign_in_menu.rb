def valid_user?(username)
    User.all.select{|user| user.user_name == username} != [] ? true : false 
    # binding.pry
end 
  
def valid_password?(pass_word, username)
    User.all.select{|user| user.password == pass_word && user.user_name == username} != [] ? true : false 
end 
  
def sign_in 
    count = 0 
  system("clear")
  prompt = TTY::Prompt.new
  puts "Welcome to TVCHUG"
  user_name = prompt.ask("Username: ")
#   key(:password).mask('Password?')
    if valid_user?(user_name)
        pass_word = prompt.mask("Password: ")
        # binding.pry
        if valid_password?(pass_word, user_name)
            $current_user = User.find_by(user_name: user_name)
            main_menu
        end 
    
        until valid_password?(pass_word, user_name)
            puts "Password Incorrect! Please re-enter your password."
            pass_word = prompt.mask("Password: ")
            count += 1 
            if count > 2
                return welcome 
            end 
         
            $current_user = User.find_by(user_name: user_name)
            system("clear")
            main_menu
        end
    else 
        puts "User Cannot Be Found!"
        input = prompt.select("Choose an option", ["Re-enter Username", "Create New Account"])
            if input == "Re-enter Username"
               sign_in
            else 
               new_account 
            end 
    end 

end
