# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require './db/seeds/brand.rb'
require './db/seeds/category.rb'


# 30.times do |number|
#     Item.create(id: "#{number}", seller_id: 1, name: '女物', discription: '先週購入しました', category_id: 1, size: 0, brand_id: , condition: 0, postage_burden: 0, sending_method: 0, prefecture_from: 13, shipping_date: 0, price: 999)
#   end

