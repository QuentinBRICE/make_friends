class Advertisement < ApplicationRecord
  belongs_to :user, optional: true  

  has_many :bookings
end
