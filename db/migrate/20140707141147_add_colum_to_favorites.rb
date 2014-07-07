class AddColumToFavorites < ActiveRecord::Migration
  def change
    add_column :favorites, :user_id, :integer, null: false
  end
end
