def rate_this_show
    print_ascii("Rate This Show !")
    prompt = TTY::Prompt.new
    choice = prompt.select('Select a Rating', [1, 2, 3, 4, 5])
    # binding.pry
    showid = Show.find{|show| show.episodate_id == $current_show_id}.id
    favorite = Favorite.all.find{|fav| fav.show_id == showid && fav.user_id == $current_user.id}
    favorite.update(rating: choice)
    puts "Your Show Has Been Rated!"
    main_menu

end 