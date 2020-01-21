class Createfavorites < ActiveRecord::Migration[5.0]
  def change 
    create_table :favorites do |t|
        t.integer :show_id
        t.integer :user_id
        t.integer :rating
    end 
end 
end
