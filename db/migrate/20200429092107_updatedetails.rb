class Updatedetails < ActiveRecord::Migration[6.0]
  def change
    drop_table :todos
    remove_column :billitems, :item_description
  end
end
