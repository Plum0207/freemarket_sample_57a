class AddInformationToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nickname, :string, limit: 15, null: false
    add_column :users, :first_name, :string, limit: 50, null: false
    add_column :users, :last_name, :string, limit: 50, null: false
    add_column :users, :first_name_kana, :string, limit: 50, null: false
    add_column :users, :last_name_kana, :string, limit: 50, null: false
    add_column :users, :phone_number, :string, limit: 11 , null: false, unique: true
    add_column :users, :birthday, :date, null: false
  end
end
