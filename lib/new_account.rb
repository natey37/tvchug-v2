# require 'tty-prompt'

# def check_password_match(first,second)
#     first == second
# end


# def new_account
#     prompt = TTY::Prompt.new
#     result = prompt.collect do
#         # key(:first_name).ask('First Name?')
#         # key(:last_name).ask('Last Name?')
#         # key(:user_name).ask('User Name?')
#         key(:password).mask('Password?')
#         key(:confirm_password).mask('Please Confirm Password')
        
#         while key(:password) != key(:confirm_password)
#             puts "Password does not match. Please try again"
#             key(:password).mask('Password?')
#             key(:confirm_password).mask('Please Confirm Password')
#         end


#     end




    

# end

# new_account


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
