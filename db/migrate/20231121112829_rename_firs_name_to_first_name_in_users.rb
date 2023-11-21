class RenameFirsNameToFirstNameInUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :firs_name, :first_name
  end
end
