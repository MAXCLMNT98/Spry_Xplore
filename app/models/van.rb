class Van < ApplicationRecord
  CATEGORIES = ["gasoline", "diesel", "hybrid", "electric", "hydrogen"]
  belongs_to :user

  validates :fuel, presence: true, inclusion: { in: CATEGORIES }
  validates :model, presence: true
  validates :price, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
