class CreateShopOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :shop_owners do |t|
      t.string :email
      t.integer :phone_number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
