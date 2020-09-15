class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :video_url
      t.text :steps
      t.bigint :owner_id, null: false, foreign_key: true
      t.string :name
      t.timestamps
    end
  end
end
