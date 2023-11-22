class RemoveDateFromAdvertisements < ActiveRecord::Migration[7.0]
  def change
    remove_column :advertisements, :date, :date
  end
end
