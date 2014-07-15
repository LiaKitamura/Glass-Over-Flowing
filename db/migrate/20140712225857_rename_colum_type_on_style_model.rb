class RenameColumTypeOnStyleModel < ActiveRecord::Migration
  def change
    change_column :styles, :category_name, :string
  end
end
