class AddColumnToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :cat_style_name, :string
  end
end
