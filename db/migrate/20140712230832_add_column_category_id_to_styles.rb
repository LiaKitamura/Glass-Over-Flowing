class AddColumnCategoryIdToStyles < ActiveRecord::Migration
  def change
    add_column :styles, :category_id, :integer
    add_index :styles, :category_id
  end
end
