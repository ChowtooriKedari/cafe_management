class Addselectedtoadditems < ActiveRecord::Migration[6.0]
  def change
    add_column :additems, :selected, :boolean
  end
end
