class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews
  has_one :shop, dependent: :destroy

  def set_as_admin
    user.is_admin = true
  end

  def admin?
    user.is_admin
  end
end
