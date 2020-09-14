class Shop < ApplicationRecord
  belongs_to :user_id, class_name: "User"
  has_many :products
end
