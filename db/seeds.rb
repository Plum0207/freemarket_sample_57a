# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# ① まずはこのまま"rake db:seed"を実行することで、ローカルのDBに以下user, category, brandのデータが入力されます。
require './db/seeds/user.rb'
require './db/seeds/category.rb'
require './db/seeds/brand.rb'

# ② 次に上記3行をコメントアウトし下記の行のコメントアウトを外して"rake db:seed"を実行することでitemのデータがローカルのDBに入力されます。
# require './db/seeds/item.rb'

# ③ 最後に上記itemの行をコメントアウトし下記の行のコメントアウトを外して"rake db:seed"を実行することで、各itemに紐づけられたimageのデータがローカルのDBに入力されます。
# require './db/seeds/image.rb'

# ローカルのDBのデータを全て消して一からやり直したい場合は、"rake db:migrate:reset"を実行してください。