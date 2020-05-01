class Orderdetails < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :item_cost, :bigint
  end
end
