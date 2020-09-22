FactoryBot.define do
  factory :item do
    name { '商品名' }
    item_info { '商品の説明(必須 1000文字まで)' }
    category_name_id { 'メンズ' }
    condition_id { '新品未使用' }
    delivery_burden_id { '着払い(購入者負担)' }
    shipping_area_id { '東京都' }
    shipping_days_id { '1~2日で発送' }
    price { '80000' }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/IMG_7786.jpg'), filename: 'IMG_7786.jpg')
    end
  end
end
