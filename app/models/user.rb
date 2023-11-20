class User < ApplicationRecord
  has_many :advertisements, :bookings
end
