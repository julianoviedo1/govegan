class Product < ApplicationRecord
  belongs_to :recipe
  has_one :shop, dependent: :destroy
end
