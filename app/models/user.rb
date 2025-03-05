class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :vans, dependent: :destroy
  has_many :bookings_as_owner, through: :vans, source: :bookings
  has_many :bookings_as_visitor, class_name: "Booking", dependent: :destroy


  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, format: { with:  URI::MailTo::EMAIL_REGEXP }
  validates :phone_number, presence: true, format: { with: /\A(0|\+33[\s-]?)[1-9][\s-]?(\d{2}[\s-]?){4}\z/ }
end
