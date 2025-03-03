class User < ApplicationRecord
  has_many :bookings, dependant: :destroy
  has_many :vans, dependant: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, format: { /^([^@]+)@([^@]+)\.(\w+)$/ }
  validates :phone_number: presence: true, format: { /^(0|\+33[\s-]?)[1-9][\s-]?(\d{2}[\s-]?){4}$/ }
end
