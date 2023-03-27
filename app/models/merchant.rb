class Merchant < ApplicationRecord
  has_one :idproof
  has_many :carts
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end