FactoryBot.define do
  factory :user do
    nickname { '鈴木' }
    email {'aaa111@test.com'}
    password { 'aaabbb' }
    password_confirmation { 'aaabbb' }
    first_name { '鈴木' }
    last_name {  '一郎' }
    first_name_kana { 'スズキ' }
    last_name_kana { 'イチロ' }
    birthday { '1977-12-24' }
  end
end
