class AddColumnSlugsToBreweries < ActiveRecord::Migration
  def change
    add_column :breweries, :slug, :string
    add_index :breweries, :slug, unique: true
  end
end
