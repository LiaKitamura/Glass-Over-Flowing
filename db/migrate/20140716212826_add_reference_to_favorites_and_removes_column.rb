class AddReferenceToFavoritesAndRemovesColumn < ActiveRecord::Migration
  def change
    remove_column :favorites, :user_id, :integer
  end
end
