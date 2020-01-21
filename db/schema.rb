# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20200121195648) do

  create_table "favorites", force: :cascade do |t|
    t.integer "show_id"
    t.integer "user_id"
    t.integer "rating"
  end

  create_table "shows", force: :cascade do |t|
    t.integer "episodate_id"
    t.string  "name"
    t.string  "permalink"
    t.string  "start_date"
    t.string  "end_date"
    t.string  "country"
    t.string  "network"
    t.string  "status"
    t.string  "image_thumbnail_path"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "password"
    t.string "user_name"
  end

end
