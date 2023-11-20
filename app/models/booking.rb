class Booking < ApplicationRecord
  belongs_to :advertisements, :users
end
