class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|
      t.string :brewery_name
      t.text :brewery_description
      t.string :website
      t.string :icon
      t.string :large_image

      t.timestamps
    end
  end
end
