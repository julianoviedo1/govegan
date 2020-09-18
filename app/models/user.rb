class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :recipes
  has_many :reviews
  has_one :shop, foreign_key: "owner_id", inverse_of: :owner, dependent: :destroy
  has_one :cart

  def set_as_admin
    self.is_admin = true
  end

  def admin?
    user.is_admin
  end
end
