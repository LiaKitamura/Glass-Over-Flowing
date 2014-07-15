class RenameColumnInStyle < ActiveRecord::Migration
  def change
    rename_column :styles, :category_id, :category_name
  end
end
