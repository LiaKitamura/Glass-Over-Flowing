class AddColumnsToBeerModels < ActiveRecord::Migration
  def change
    add_column :beers, :beer_description, :text
  end
end
