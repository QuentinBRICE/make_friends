class AddAddressAndCoordinatesToAdvertisements < ActiveRecord::Migration[7.0]
  def change
    add_column :advertisements, :address, :string
    add_column :advertisements, :latitude, :float
    add_column :advertisements, :longitude, :float
  end
end
