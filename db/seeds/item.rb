10.times do |number|
    Item.create!(id: "#{number+1}", seller_id: 2, name: "レディース", description: "[激レア] 良品です!!", category_id: 32, size: "M", brand_id: 8, condition: 0, postage_burden: 0, sending_method: 0, prefecture_from: 0, shipping_date: 0, price: 999)
  end

10.times do |number|
  Item.create!(id: "#{number+11}", seller_id: 1, name: "メンズ", description: "[激レア] 良品です!!", category_id: 229, size: 0, brand_id: 8, condition: 0, postage_burden: 0, sending_method: 0, prefecture_from: 0, shipping_date: 0, price: 999)
end

10.times do |number|
  Item.create!(id: "#{number+21}", seller_id: 1, name: "家電・スマホ・カメラ", description: "[激レア] 良品です!!", category_id: 375, size: 0, brand_id: 8, condition: 0, postage_burden: 0, sending_method: 0, prefecture_from: 0, shipping_date: 0, price: 999)
end

10.times do |number|
  Item.create!(id: "#{number+31}", seller_id: 1, name: "おもちゃ・ホビー・グッズ", description: "[激レア] 良品です!!", category_id: 506, size: 0, brand_id: 8, condition: 0, postage_burden: 0, sending_method: 0, prefecture_from: 0, shipping_date: 0, price: 999)
end
  
10.times do |number|
    Item.create!(id: "#{number+41}", seller_id: 2, name: "シャネル", description: "[激レア] 良品です!!", category_id: 32, size: 0, brand_id: 1, condition: 0, postage_burden: 0, sending_method: 0, prefecture_from: 0, shipping_date: 0, price: 999)
end
  
10.times do |number|
    Item.create!(id: "#{number+51}", seller_id: 2, name: "ルイ・ビトン", description: "[激レア] 良品です!!", category_id: 32, size: 0, brand_id: 3, condition: 0, postage_burden: 0, sending_method: 0, prefecture_from: 0, shipping_date: 0, price: 999)
end

10.times do |number|
  Item.create!(id: "#{number+61}", seller_id: 1, name: "シュプリーム", description: "[激レア] 良品です!!", category_id: 229, size: 0, brand_id: 4, condition: 0, postage_burden: 0, sending_method: 0, prefecture_from: 0, shipping_date: 0, price: 999)
end

10.times do |number|
  Item.create!(id: "#{number+71}", seller_id: 1, name: "ナイキ", description: "[激レア] 良品です!!", category_id: 229, size: 0, brand_id: 6, condition: 0, postage_burden: 0, sending_method: 0, prefecture_from: 0, shipping_date: 0, price: 999)
end