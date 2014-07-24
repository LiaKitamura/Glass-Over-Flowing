class AddColumnToBreweries < ActiveRecord::Migration
  def change
    add_column :breweries, :established, :string
    add_column :breweries, :longitude, :string
    add_column :breweries, :latitude, :string
  end
end
