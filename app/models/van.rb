class Van < ApplicationRecord
  CATEGORIES = ["gasoline", "diesel", "hybrid", "electric", "hydrogen"]
  belongs_to :user
  has_one_attached :photo
  has_many :bookings, dependent: :destroy

  validates :fuel, presence: true, inclusion: { in: CATEGORIES }
  validates :model, presence: true
  validates :price, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
