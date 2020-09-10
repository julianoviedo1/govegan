class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.references :recipe, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.integer :unit_price
      t.references :shop_owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
