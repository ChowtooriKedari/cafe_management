class Useridtest < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :ordered_user_id
    add_column :orders, :user_id, :bigint
  end
end
