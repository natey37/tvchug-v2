class AddTimestamp < ActiveRecord::Migration[5.2]
  def change
    add_column :shows, :created_at, :timestamp
    add_column :users, :created_at, :timestamp
    add_column :favorites, :created_at, :timestamp
  end
end
