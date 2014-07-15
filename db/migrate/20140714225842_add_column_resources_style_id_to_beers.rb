class AddColumnResourcesStyleIdToBeers < ActiveRecord::Migration
  def change
    add_column :beers, :resources_style_id, :integer
  end
end
