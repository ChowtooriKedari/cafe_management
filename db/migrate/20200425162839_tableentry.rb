class Tableentry < ActiveRecord::Migration[6.0]
  def change
    create_table :orderitems do |t|
      t.bigint :ordered_user_id
      t.string :menu_item_name
      t.bigint :menu_item_cost
      t.bigint "quantity"
    end
  end
end
