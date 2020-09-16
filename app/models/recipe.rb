class Recipe < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "owner_id"
  has_many :ingredients, dependent: :destroy
  has_one_attached :recipe_photo
end
