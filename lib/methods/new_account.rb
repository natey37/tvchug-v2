# # require './config/environment'

# require 'tty-prompt'

<<<<<<< HEAD
# # def new_account
#     prompt = TTY::Prompt.new
    
#     result = prompt.collect do
#         key(:first_name).ask('First Name?')
#         key(:last_name).ask('Last Name?')
#         key(:user_name).ask('User Name?')
#         key(:password).mask('Password?')
#     end


# # end

# # new_account

=======
def new_account
    prompt = TTY::Prompt.new
    
    result = prompt.collect do
        key(:first_name).ask('First Name?')
        key(:last_name).ask('Last Name?')
        key(:user_name).ask('User Name?')
        key(:password).mask('Password?')
    end
    system("clear")
    user = User.create(result)
end


>>>>>>> c85d2ed0c5c291f8a73ef0eb35f249479252fd58
