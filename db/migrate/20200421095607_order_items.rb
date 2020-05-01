class OrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :orderitem do |t|
      t.bigint :ordered_user_id
      t.bigint :order_id
      t.bigint :menu_item_id
      t.string :menu_item_name
      t.string :menu_item_price

      t.timestamps
    end
  end
end
