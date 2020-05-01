class Orders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.bigint :ordered_user_id
      t.date :order_date
      t.bigint :user_id
      t.datetime :delivered_at
      t.timestamps
    end
  end
end
