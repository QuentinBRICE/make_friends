class Booking < ApplicationRecord
  belongs_to :advertisement
  belongs_to :user
end
