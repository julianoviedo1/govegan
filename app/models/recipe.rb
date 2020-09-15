class Recipe < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "owner_id"
  has_many :ingredients
  has_one_attached :recipe_photo
end
