def new_account
    prompt = TTY::Prompt.new
    system("artii 'Make a New Account!' --font slant")
    puts 
    puts 
    first_name = prompt.ask('First Name?') do |q|
                    q.validate (/[^\s]/)
                 end 
    last_name = prompt.ask('Last Name?') do |q|
                    q.validate (/[^\s]/)
                end  
    
    user = prompt.ask('User Name?') do |q|
              q.validate (/[^\s]/) 
           end
                until !validate_user_name?(user)
                    puts "That User Name has Been Taken! Please Choose Another!"
                    user = prompt.ask('User Name?') do |q|
                        q.validate (/[^\s]/) 
                    end
                end 
    password = prompt.mask('Password?') do |q|
                q.validate (/[^\s]/)
                end 

    result = {first_name: first_name, last_name: last_name, user_name: user, password: password}
    $current_user = User.create(result)
    main_menu
end

def validate_user_name?(user_name)
    User.all.find_by(user_name: user_name)
end 
