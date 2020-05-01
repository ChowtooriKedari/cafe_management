class Userpassword < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :passwword_digest
    add_column :users, :password_digest, :string
  end
end
