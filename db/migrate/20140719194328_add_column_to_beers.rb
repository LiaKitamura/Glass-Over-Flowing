class AddColumnToBeers < ActiveRecord::Migration
  def change
    add_column :beers, :resource_id, :string
    add_column :beers, :brewery_id, :integer, index: true
    add_column :beers, :icon, :string
    add_column :beers, :large_image, :string
    add_column :breweries, :resource_id, :string
  end
end
