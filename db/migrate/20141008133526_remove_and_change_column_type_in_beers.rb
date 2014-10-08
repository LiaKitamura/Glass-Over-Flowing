class RemoveAndChangeColumnTypeInBeers < ActiveRecord::Migration
  def change
    change_column :beers, :brewery_id, :string
    remove_column :beers, :category
    remove_column :beers, :style
  end
end
