def valid_user?(username)
    User.all.select{|user| user.user_name == username} != [] ? true : false 
    # binding.pry
end 
  
def valid_password?(pass_word)
    User.all.select{|user| user.password == pass_word} != [] ? true : false 
end 
  
def sign_in
  system("clear")
  prompt = TTY::Prompt.new
  puts "Welcome to TVCHUG"
  user_name = prompt.ask("Username: ")
  
    if valid_user?(user_name)
        pass_word = prompt.ask("Password: ")
        # binding.pry
        if valid_password?(pass_word)
            $current_user = User.all.find_by(user_name: user_name)
            main_menu
        else 
            4.times do  
                valid_password?(pass_word)
                puts "Password Incorrect! Please re-enter your password."
                pass_word = prompt.ask("Password: ")
            end 
            sign_in
        end 
        
    else 
        puts "User Cannot Be Found!"
        input = prompt.select("Choose an option", %w(Re-enter_Username Create_New_Account))
            if input == "Re-enter_Username"
               sign_in
            else 
               new_account 
            end 
    end 
end
