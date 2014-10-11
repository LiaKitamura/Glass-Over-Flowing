class AddColumnToBreweries < ActiveRecord::Migration
  def change
    add_column :breweries, :location_name, :string
    add_column :breweries, :location_type, :string
    add_column :breweries, :street_address, :string
    add_column :breweries, :locality, :string
    add_column :breweries, :region, :string
    add_column :breweries, :postal_code, :string
    add_column :breweries, :phone, :string
    add_column :breweries, :hours, :string
    add_column :breweries, :open_to_public, :string
    add_column :breweries, :established, :string
    add_column :breweries, :longitude, :string
    add_column :breweries, :latitude, :string
  end
end
