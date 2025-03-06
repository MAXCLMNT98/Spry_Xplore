class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :van

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, inclusion: { in: ['En attente', 'Acceptée', 'Refusée'] }

  def accept!
    update(status: 'Acceptée')
  end

  def reject!
    update(status: 'Refusée')
  end
end
