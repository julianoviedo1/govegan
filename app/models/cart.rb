class Cart < ApplicationRecord
  belongs_to :user_id, optional: true
  has_and_belongs_to_many :cart_items
end

# t.integer "total_price"
# t.text "description"
# t.bigint "user_id", null: false
