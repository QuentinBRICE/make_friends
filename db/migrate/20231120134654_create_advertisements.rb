class CreateAdvertisements < ActiveRecord::Migration[7.0]
  def change
    create_table :advertisements do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.integer :users_id

      t.timestamps
    end
  end
end
