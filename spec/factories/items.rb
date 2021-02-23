FactoryBot.define do
  factory :Item_01, class: Item do
    name { "パーカー/テスト" }
    brand { "ユニクロ" }
    status { 1 }
    delivery_from { 1 }
    price { 2000 }
    content { "テスト商品です"}
    category_id { 4 }
  end
end