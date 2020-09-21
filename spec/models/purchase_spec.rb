require 'rails_helper'
RSpec.describe Purchase, type: :model do
  describe '商品情報を入力' do
    before do
      @purchase = FactoryBot.build(:purchase)
    end

    it '必須項目を入力し、商品情報を入力ができる' do
      expect(@item).to be_valid
    end
    it '画像は1枚必須である' do
      @item.name = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Image can't be blank")
    end
    it '商品名が必須である' do
      @item.name = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Name can't be blank")
    end
    it '商品の説明が必須である'do
      @item.item_info = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Item info can't be blank")
    end
  end
end