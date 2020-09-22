FactoryBot.define do
  factory :user_cards do
    postal_code { '123-4567' }
    shipping_area_id{ '5' }
    city { '横浜市緑区' }
    address_number { '青山1-1-1' }
    building {  '柳ビル103' }
    phone { '09012345678' }
  end
end
  # FactoryBot.define do
  #     factory :user do
  #       nickname              {Faker::Name.initials(number: 2)}
  #       email                 {Faker::Internet.free_email}
  #       password              {Faker::Internet.password(min_length: 6)}
  #       password_confirmation {password}
  #       first_name            { '鈴木' }
  #       last_name             {  '一郎' }
  #       first_name_kana       { 'スズキ' }
  #       last_name_kana        { 'イチロ' }
  #       birthday              { '1977-12-24' }
  #     end
  #   end
  #     FactoryBot.define do
  #     factory :item do
  #       name { '商品名' }
  #       item_info { '商品の説明(必須 1000文字まで)' }
  #       category_name_id { 'メンズ' }
  #       condition_id { '新品未使用' }
  #       delivery_burden_id {  '着払い(購入者負担)' }
  #       shipping_area_id { '東京都' }
  #       shipping_days_id { '1~2日で発送' }
  #       price {'80000'}
  #       association :user 
    
  #       after(:build) do |item|
  #         item.image.attach(io: File.open('public/images/IMG_7786.jpg'), filename: 'IMG_7786.jpg')
  #       end
  #     end
  #   end


