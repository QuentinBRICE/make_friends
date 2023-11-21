class Advertisement < ApplicationRecord
  belongs_to :user, optional: true  
  validates :date, presence: true
  has_many :bookings
end
