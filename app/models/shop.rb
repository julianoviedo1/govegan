class Shop < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "owner_id"
  has_many :products
  has_one_attached :logo
end
