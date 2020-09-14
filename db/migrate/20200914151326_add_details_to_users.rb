class AddDetailsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :is_admin, :boolean, default: false
    #Ex:- :default =>''
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :adress, :string
    add_column :users, :phone_number, :integer
  end
end
