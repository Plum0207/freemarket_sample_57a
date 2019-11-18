# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# カテゴリのレコード追加
require './db/seeds/area.rb'
require './db/seeds/brand.rb'
require './db/seeds/category.rb'
require './db/seeds/condition.rb'
require './db/seeds/sending_method.rb'
require './db/seeds/size.rb'