class Product < ApplicationRecord
    has_many :productimages
    has_one :merchant_id
    belongs_to :category
    validates :name, :description, :price, presence: true
    validates :status, presence: true, inclusion: { in: %w(active inactive draft) }
    enum status: { 'draft': 'draft', 'active': 'active', 'inactive': 'inactive' }, _default: :draft
    has_many :carts
  end