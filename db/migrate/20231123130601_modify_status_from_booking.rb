class ModifyStatusFromBooking < ActiveRecord::Migration[7.0]
  def change
    change_column_default :bookings, :status, from: true, to: false
  end
end
