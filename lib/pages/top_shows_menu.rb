def popular_shows 
    shows = RestClient.get("https://www.episodate.com/api/most-popular?page=1")
    shows = JSON.parse(shows)
    result = make_list(shows)
end
