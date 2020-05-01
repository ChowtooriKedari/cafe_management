class Changeattributes < ActiveRecord::Migration[6.0]
  def change
    remove_column :additems, :selected
    add_column :menuitems, :selected, :boolean
    add_column :orderitem, :quantity, :bigint
  end
end
