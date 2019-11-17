class RenameTitleColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :phone_number, :telephone
  end
end
