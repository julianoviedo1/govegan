class Product < ApplicationRecord
  has_one :shop, dependent: :destroy
  has_many_attached :product_photo
end
