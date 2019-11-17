class CreateUserAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :user_addresses do |t|
      t.references :user, foreign_key: true, null: false
      t.string :first_name, limit: 50, null: false
      t.string :last_name, limit: 50, null: false
      t.string :first_name_kana, limit: 50, null: false
      t.string :last_name_kana, limit: 50, null: false
      t.integer :postal_code, null: false
      t.string  :prefecture, foreign_key: true, null: false
      t.string :city, limit: 20, null: false
      t.string :address, limit: 20, null: false
      t.string :building, limit: 50
      t.string :telephone, limit: 11
      t.timestamps
    end
  end
end
