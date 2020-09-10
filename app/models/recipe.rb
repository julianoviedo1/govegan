class Recipe < ApplicationRecord
  belongs_to :shop_owner
  belongs_to :ingredient
end
