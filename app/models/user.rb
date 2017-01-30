class User < ApplicationRecord
  has_secure_password
  has_many :baskets
  has_many :line_items, through: :baskets
  has_many :products, through: :line_items

  validates :email, :name, presence: true
  validates :email, :name, uniqueness: true

end
