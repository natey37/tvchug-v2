def valid_user?(username)
    User.all.select{|user| user.user_name == username} != [] ? true : false 
end 
  
def valid_password?(pass_word)
    User.all.select{|user| user.password == pass_word} != [] ? true : false 
end 
  
<<<<<<< HEAD
#   system("clear")
#   user_input = prompt.select("Chose an option",  %w(Sign_In New_Account View_as_Guest))
#   system("clear")
#   puts "Welcome to TVCHUG"
#   user_name = prompt.ask("Username: ")
  
#       if valid_user?(user_name)
#           pass_word = prompt.ask("Password: ")
#       else 
#           puts "User Cannot Be Found!"
#           #sends you to create user page
#       end 
  
#       if valid_password?(pass_word)
#           #takes you to main homepage
#       else 
#           until valid_password?(pass_word)
#           puts "Password Incorrect! Please re-enter your password."
#           pass_word = prompt.ask("Password: ")
#           end 
  
#       end 
  
=======
def sign_in
  system("clear")
  prompt = TTY::Prompt.new
  user_input = prompt.select("Chose an option",  %w(Sign_In New_Account View_as_Guest))
  system("clear")
  puts "Welcome to TVCHUG"
  user_name = prompt.ask("Username: ")
  
      if valid_user?(user_name)
          pass_word = prompt.ask("Password: ")
      else 
          puts "User Cannot Be Found!"
          #sends you to create user page
      end 
  
      if valid_password?(pass_word)
          #takes you to main homepage
      else 
          until valid_password?(pass_word)
          puts "Password Incorrect! Please re-enter your password."
          pass_word = prompt.ask("Password: ")
          end 
  
      end 
end

>>>>>>> c85d2ed0c5c291f8a73ef0eb35f249479252fd58
  
  
  