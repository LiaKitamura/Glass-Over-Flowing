class AddColumnToCategoriesModel < ActiveRecord::Migration
  def change
    add_column :categories, :category_description, :text
    rename_column :categories, :cat_style_name, :resources_category_id
  end
end
