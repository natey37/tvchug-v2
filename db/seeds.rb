# require 'bundler'
# Bundler.require
# require 'tty-prompt'
# require 'rest-client'

# ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')





user1 = User.new(first_name: "Nathan", last_name: "Brickett", user_name: "natey37", password: "Wow")
user2 = User.new(first_name: "Jerry", last_name: "Huang", user_name: "jerry123", password: "Moo")
user3 = User.new(first_name: "Hannah", last_name: "Lindner", user_name: "hannah11", password: "Nope")
User.create(first_name: "Kyle", last_name: "Lettuce", user_name: "lettucelord", password: "password")
User.create(first_name: Faker::Name.name, last_name: Faker::Name.name, user_name: Faker::Name.name, password: Faker::GreekPhilosophers.name)
User.create(first_name: Faker::Name.name, last_name: Faker::Name.name, user_name: Faker::Name.name, password: Faker::GreekPhilosophers.name)
User.create(first_name: Faker::Name.name, last_name: Faker::Name.name, user_name: Faker::Name.name, password: Faker::GreekPhilosophers.name)
User.create(first_name: Faker::Name.name, last_name: Faker::Name.name, user_name: Faker::Name.name, password: Faker::GreekPhilosophers.name)
# t.integer "episodate_id"
#     t.string  "name"
#     t.string  "permalink"
#     t.string  "start_date"
#     t.string  "end_date"
#     t.string  "country"
#     t.string  "network"
#     t.string  "status"
#     t.string  "image_thumbnail_path"
show1 = Show.create(episodate_id: Faker::Number.number(4), name: Faker::FunnyName.name)
Favorite.new(show_id: "#{show1}", user_id "#{user1}", rating: )


# 10.times do
#     User.create(first_name: Faker::Name.name, last_name: Faker::Name.name, user_name: Faker::Name.name, password: Faker::GreekPhilosophers.name)
# end 
