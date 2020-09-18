class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :product
  has_and_belongs_to_many :cart

end

# t.bigint "cart_id", null: false
# t.bigint "product_id", null: false
# t.integer "quantity"
# t.integer "subtotal_price"