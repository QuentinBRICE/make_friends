class Advertisement < ApplicationRecord
  belongs_to :user
  # validates :date, presence: true
  has_many :bookings
end
