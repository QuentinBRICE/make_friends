class Advertisement < ApplicationRecord
  validates :date, presence: true
  belongs_to :user

  has_many :bookings
end
