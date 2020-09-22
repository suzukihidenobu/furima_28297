FactoryBot.define do
  factory :user_cards do
    postal_code { '123-4567' }
    shipping_area_id { '5' }
    city { '横浜市緑区' }
    address_number { '青山1-1-1' }
    building { '柳ビル103' }
    phone { '09012345678' }
  end
end
