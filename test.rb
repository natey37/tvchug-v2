require 'tty-prompt'
require 'rest-client'
require 'JSON'
require_relative './config/environment.rb'

prompt = TTY::Prompt.new

# system("clear")
# puts 'WELCOME TO TV CHUG'
# puts 
# prompt.select("Chose an option",  %w(Sign_In New_Account View_as_Guest))

# popular_shows = RestClient.get("https://www.episodate.com/api/most-popular?page=1")

# popular_shows = JSON.parse(popular_shows)

# popular_shows["tv_shows"].each_with_index do |show,index|
#     puts "#{index+1}. #{show["name"]}"
# end

# def search(string)
#     prompt = TTY::Prompt.new
#     result = RestClient.get("https://www.episodate.com/api/search?q=#{string}&page=1")
#     result = JSON.parse(result)
#     arr = []
#     result["tv_shows"].each_with_index do |show,index|
#         arr << "#{index+1}. #{show["name"]}"
#     end
#     arr << "Exit"
#     choice = prompt.select("action?", arr)
# end

# def picked_show_prompt(show)
#     system("clear")
#     prompt = TTY::Prompt.new
#     options = ["Favorite show", "Find Out More Info", "Exit"]
#     prompt.select(show, options)
# end


# user_input = search("rick")

# picked_show_prompt(user_input)









# --> "sign in"
# binding.pry
# def valid_user?(username)
#   User.all.select{|user| user.user_name == username} != [] ? true : false 
# end 

# def valid_password?(pass_word)
#   User.all.select{|user| user.password == pass_word} != [] ? true : false 
# end 

# system("clear")
# user_input = prompt.select("Chose an option",  %w(Sign_In New_Account View_as_Guest))
# system("clear")
# puts "Welcome to TVCHUG"
# user_name = prompt.ask("Username: ")

#     if valid_user?(user_name)
#         pass_word = prompt.ask("Password: ")
#     else 
#         puts "User Cannot Be Found!"
#         #sends you to create user page
#     end 

#     if valid_password?(pass_word)
#         #takes you to main homepage
#     else 
#         until valid_password?(pass_word)
#         puts "Password Incorrect! Please re-enter your password."
#         pass_word = prompt.ask("Password: ")
#         end 

#     end 



