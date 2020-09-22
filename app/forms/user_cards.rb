class UserCards
  include ActiveModel::Model
  attr_accessor :name, :name_reading, :nickname, :postal_code, :_id,
                :city, :phone, :building, :price, :shipping_area_id, :address_number, :commit, :item_id, :token, :user_id, :purchases_id
                with_options presence: true do
                  validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, messsgge: "は「-」も入力してください"}
                  validates :shipping_area_id, numericality: { other_than: 0, message: "can't be blank" }
                  validates :city
                  validates :address_number
                  validates :building
                  validates :phone, format: { with: /\A0\d{9,10}\Z/, message: "ハイフンは不要で、11桁以内である"}
                  end
                  def save
                    purchase = Purchase.create(item_id: item_id, user_id: user_id)
                    Address.create(postal_code: postal_code, address_number: address_number, phone: phone, city: city, building: building, shipping_area_id: shipping_area_id, purchase_id: purchase.id)
                  end
                end
              #   require 'rails_helper'
              #   RSpec.describe Address, type: :model dodescribe '商品購入機能' dobefore do
              #     @user = FactoryBot.create(:user)
              #     @item = FactoryBot.create(:item)
              #     @address = FactoryBot.build(:address)
              #   end
            
              #   it '必須項目を入力し、商品購入機能を入力ができる' do
              #     expect(@address).to be_valid
              #   end
               
              #   it '配送先の情報として、郵便番号が必須である' do
              #     @address.postal_code = nil
              #     @address.valid?
              #     binding.pry
                  
              #     expect(@paddress.errors.full_messages).to include("Image can't be blank")
              #   end
              #   it '郵便番号にはハイフンが必要である（123-4567となる）' do
              #     @address.postal_code= "1234"
              #     @address.valid?
              #     expect(@address.errors.full_messages).to include("Image can't be blank")
              #   end
              #   it '配送先の情報として、都道府県が必須である' do
              #     @address.shipping_area_id = nil
              #     @address.valid?
              #     expect(@address.errors.full_messages).to include("Image can't be blank")
              #   end
              #   it '配送先の情報として、市区町村が必須である' do
              #     @address.city = nil
              #     @address.valid?
              #     expect(@address.errors.full_messages).to include("Image can't be blank")
              #   end
              #   it '配送先の情報として、番地が必須である' do
              #     @address.address_number = nil
              #     @address.valid?
              #     expect(@address.errors.full_messages).to include("Image can't be blank")
              #   end
              #   it '配送先の情報として、電話番号が必須である' do
              #     @address.phone = nil
              #     @address.valid?
              #     expect(@address.errors.full_messages).to include("Image can't be blank")
              #   end
              #   it '電話番号にはハイフンは不要で、11桁以内である' do
              #     @address.phone = "090123456789"
              #     @address.valid?
              #     expect(@address.errors.full_messages).to include("Image can't be blank")
              #   end
              # end
            # end
              
                            
            
    