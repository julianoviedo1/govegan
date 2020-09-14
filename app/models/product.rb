class Product < ApplicationRecord
  belongs_to :recipe
  belongs_to :shop_owner
  has_one :shop, dependent: :destroy
end
