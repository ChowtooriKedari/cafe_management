class Changeorders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :item_name, :string
    remove_column :orders, :created_at
    remove_column :orders, :updated_at
  end
end
