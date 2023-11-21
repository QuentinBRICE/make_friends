class Booking < ApplicationRecord
  belongs_to :advertisement, optional: true
  belongs_to :user, optional: true
end
