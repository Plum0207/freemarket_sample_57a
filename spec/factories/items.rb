FactoryBot.define do

  factory :item do
    seller_id           { 1 }
    name                { "テスト" }
    description         { "テスト用のテストです。" }
    category_id         { 67 }
    size                { 0 }
    brand_id            { 1 }
    condition           { 0 }
    postage_burden      { 0 }
    sending_method      { 0 }
    prefecture_from     { 1 }
    shipping_date       { 0 }
    price               { 1000 }
  end
end