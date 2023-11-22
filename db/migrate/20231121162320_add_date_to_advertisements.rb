class AddDateToAdvertisements < ActiveRecord::Migration[7.0]
  def change
    add_column :advertisements, :date, :date
  end
end
