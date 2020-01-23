# def popular_shows 
#     shows = RestClient.get("https://www.episodate.com/api/most-popular?page=1")
#     shows = JSON.parse(shows)["tv_shows"]
    
#     arr = []
#     hash = {}

#     shows.each_with_index do |show,index|
#         arr << "#{index+1}. #{show["name"]}"
#         hash[index + 1] = show["id"]

#     end
#     arr << "Search Again" 
#     arr << "Exit"

#     choice = ttyprompt("Results", arr)

#     user_action(choice)

#     hash_key = choice.split(".")[0].to_i
#     $current_show_id =  hash[hash_key]

#     show_details

# end
