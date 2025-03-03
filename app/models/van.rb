class Van < ApplicationRecord
  CATEGORIES = ["gasoline", "diesel", "hybrid", "electric", "hydrogen"]
  belongs_to :user

  validates :fuel, presence: true, inclusion: { in: CATEGORIES }
  validates :model, presence: true
  validates :price, presence: true
end
