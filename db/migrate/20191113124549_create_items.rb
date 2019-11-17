class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :seller, null: false, foreign_key: { to_table: :users }
      t.string :name, null: false
      t.text :discription, null: false
      t.references :category, null: false, foreign_key: true
      t.integer :size
      t.references :brand, foreign_key: true
      t.integer :condition, null: false
      t.integer :postage_burden, null: false
      t.integer :sending_method, null: false
      t.integer :prefecture_from, null: false
      t.integer :shipping_date, null: false
      t.integer :price, null: false
      t.timestamps
    end
  end
end
