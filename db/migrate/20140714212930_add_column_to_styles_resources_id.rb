class AddColumnToStylesResourcesId < ActiveRecord::Migration
  def change
    add_column :styles, :resources_id, :integer
  end
end
