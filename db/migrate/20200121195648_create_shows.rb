class CreateShows < ActiveRecord::Migration[5.0]
  def change 
    create_table :shows do |t|
      t.integer :episodate_id
      t.string :name
      t.string :permalink
      t.string :start_date
      t.string :end_date
      t.string :country
      t.string :network
      t.string :status
      t.string :image_thumbnail_path
    end
  end 
end

