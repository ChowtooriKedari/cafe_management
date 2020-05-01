class Droptable < ActiveRecord::Migration[6.0]
  def change
    drop_table :menuitems
  end
end
