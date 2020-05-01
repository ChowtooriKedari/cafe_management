class Newerupdatedetails < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :order_item
    add_column :orders, :order_time, :datetime
  end
end
