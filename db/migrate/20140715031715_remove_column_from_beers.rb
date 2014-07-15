class RemoveColumnFromBeers < ActiveRecord::Migration
  def change
    remove_column :beers, :resources_style_id
  end
end
