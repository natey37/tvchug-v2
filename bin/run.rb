require_relative '../config/environment'

system("clear")
puts 'WELCOME TO TV CHUG'
puts 
prompt.select("Chose an option",  %w(Sign_In New_Account View_as_Guest))

popular_shows = RestClient.get("https://www.episodate.com/api/most-popular?page=1")

popular_shows = JSON.parse(popular_shows)

popular_shows["tv_shows"].each_with_index do |show,index|
    puts "#{index+1}. #{show["name"]}"
end