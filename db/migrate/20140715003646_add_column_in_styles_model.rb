class AddColumnInStylesModel < ActiveRecord::Migration
  def change
    add_column :styles, :style_description, :text
  end
end
