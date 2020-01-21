require 'tty-prompt'
require 'rest-client'
require 'JSON'

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

def search(string)
    result = RestClient.get("https://www.episodate.com/api/search?q=#{string}&page=1")
    result = JSON.parse(result)
    result["tv_shows"].each_with_index do |show,index|
        #puts "#{index+1}. #{show["name"]}"
        pp result
    end
end

search("rick")


