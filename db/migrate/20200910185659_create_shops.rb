class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.bigint :owner_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
