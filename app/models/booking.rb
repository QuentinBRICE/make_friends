class Booking < ApplicationRecord
  belongs_to :advertisement, optional: true
  belongs_to :user, optional: true

  validates :status, inclusion: { in: %w[accepte refuse], allow_nil: true }
end
