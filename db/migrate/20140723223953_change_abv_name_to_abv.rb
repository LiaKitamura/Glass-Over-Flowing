class ChangeAbvNameToAbv < ActiveRecord::Migration
  def change
    rename_column :beers, :ABV, :abv
  end
end
