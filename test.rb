require 'tty-prompt'
require 'rest-client'
require 'JSON'

prompt = TTY::Prompt.new

system("clear")
puts 'WELCOME TO TV CHUG'
puts 
prompt.select("Chose an option",  %w(Sign_In New_Account View_as_Guest))

popular_shows = RestClient.get("https://www.episodate.com/api/most-popular?page=1")

popular_shows = JSON.parse(popular_shows)

popular_shows["tv_shows"].each_with_index do |show,index|
    puts "#{index+1}. #{show["name"]}"
end

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

system("clear")
user_input = prompt.select("Chose an option",  %w(Sign_In New_Account View_as_Guest))
system("clear")
puts "Welcome to TVCHUG"
prompt.ask("Username: ")
user_name = gets.chomp
# if User.find(user_name) == nil
#     puts "User not found"
# end 
prompt.ask("Password: ")
user_password = gets.chomp 


