class RemoveAndChangeColumnTypeInBeers < ActiveRecord::Migration
  def change
    remove_column :beers, :category
    remove_column :beers, :style
  end
end
