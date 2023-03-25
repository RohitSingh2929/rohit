class Idproof < ApplicationRecord
    mount_uploader :doctype, ImageUploader
    belongs_to :merchant
  validates :document, presence: true
  validates :merchant_id, presence: true
  validates :status, presence: true
    # enum :doctype, { "Atm ": 1, "Pan Card": 2},_default: :"Pan Card"
end
