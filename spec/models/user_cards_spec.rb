    require 'rails_helper'
    RSpec.describe UserCards, type: :model do
    describe '商品購入機能' do

      before do
      @user = FactoryBot.build(:user)
      @user = FactoryBot.create(:user)
      @item = FactoryBot.create(:item)
      @user_cards = FactoryBot.build(:user_cards)
      end

    it '必須項目を入力し、商品購入機能を入力ができる' do
      expect(@user_cards).to be_valid
    end
    
    it '配送先の情報として、郵便番号が必須である' do
      @user_cards.postal_code = nil
      @user_cards.valid?
      expect(@user_cards.errors.full_messages).to include("Postal code can't be blank")
    end
    it '郵便番号にはハイフンが必要である（123-4567となる）' do
      @user_cards.postal_code= "1234"
      @user_cards.valid?
      expect(@user_cards.errors.full_messages).to include("Postal code is invalid")
    end
    it '配送先の情報として、都道府県が必須である' do
      @user_cards.shipping_area_id = nil
      @user_cards.valid?
      expect(@user_cards.errors.full_messages).to include("Shipping area can't be blank")
    end
    it '配送先の情報として、市区町村が必須である' do
      @user_cards.city = nil
      @user_cards.valid?
      expect(@user_cards.errors.full_messages).to include("City can't be blank")
    end
    it '配送先の情報として、番地が必須である' do
      @user_cards.address_number = nil
      @user_cards.valid?
      expect(@user_cards.errors.full_messages).to include("Address number can't be blank")
    end
    it '配送先の情報として、電話番号が必須である' do
      @user_cards.phone = nil
      @user_cards.valid?
      expect(@user_cards.errors.full_messages).to include("Phone can't be blank")
    end
    it '電話番号にはハイフンは不要で、11桁以内である' do
      @user_cards.phone = "090123456789"
      @user_cards.valid?
      expect(@user_cards.errors.full_messages).to include("Phone ハイフンは不要で、11桁以内である")
    end
  end
end
                

