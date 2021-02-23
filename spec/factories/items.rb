FactoryBot.define do
  factory :Item_01, class: Item do
    name { "ユーザー1" }
    brand { "ブランド1" }
    brand { "ブランド1" }
    status { 0 }
    delivery_from { 1 }
    price { 2000 }
    content { "テスト商品です"}

  end
end