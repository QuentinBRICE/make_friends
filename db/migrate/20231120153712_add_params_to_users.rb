class AddParamsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :firs_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :age, :integer
  end
end
