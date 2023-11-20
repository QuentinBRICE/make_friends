class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :status
      t.integer :total_price
      t.integer :advertisements_id
      t.integer :users_id

      t.timestamps
    end
  end
end
