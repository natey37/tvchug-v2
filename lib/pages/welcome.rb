def welcome
    system("clear")

    puts
    puts

    system("artii 'TV Chug' --font slant")

    # puts "TTTTTTT VV     VV     CCCCC  hh                      "
    # puts "  TTT   VV     VV    CC    C hh      uu   uu  gggggg "
    # puts "  TTT    VV   VV     CC      hhhhhh  uu   uu gg   gg "
    # puts "  TTT     VV VV      CC    C hh   hh uu   uu ggggggg "
    # puts "  TTT      VVV        CCCCC  hh   hh  uuuu u      gg "
    # puts "                                               ggggg " 
        puts
        user_input = ttyprompt( 'WELCOME TO TV CHUG', ["Sign In", "New Account", "View as Guest", "About Us", "Exit Program"])
        user_action(user_input)
end