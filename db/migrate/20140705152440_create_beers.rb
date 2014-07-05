class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :category
      t.string :style
      t.string :name
      t.string :brewed_by
      t.float :ABV

      t.timestamps
    end
  end
end
