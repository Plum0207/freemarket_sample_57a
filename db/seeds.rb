# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# "rake db:seed"を実行することで、ローカルのDBにデータが入力されます。itemやimageより先にユーザーが入力されないと上手く反映されないので、順番はこのままにしてください。
require './db/seeds/category.rb'
require './db/seeds/brand.rb'
require './db/seeds/user.rb'
require './db/seeds/item.rb'
require './db/seeds/image.rb'

# ローカルのDBのデータを全て消して一からやり直したい場合は、"rake db:migrate:reset"を実行してください。