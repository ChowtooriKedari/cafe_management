class Billquantity < ActiveRecord::Migration[6.0]
  def change
    add_column :billitems, :quantity, :bigint
    add_column :orders, :quantity, :bigint
  end
end
