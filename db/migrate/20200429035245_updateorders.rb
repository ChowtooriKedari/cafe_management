class Updateorders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :user_id
    add_column :orders, :confirmed, :boolean
  end
end
