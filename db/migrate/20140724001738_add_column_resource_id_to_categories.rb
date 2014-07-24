class AddColumnResourceIdToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :resource_id, :integer
  end
end
