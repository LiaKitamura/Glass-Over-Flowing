class AddColumnToStyles < ActiveRecord::Migration
  def change
    add_column :styles, :slug, :string
    add_index :styles, :slug, unique: true
  end
end
