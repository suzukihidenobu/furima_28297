require 'rails_helper'



    it '必須項目を入力し、商品情報を入力ができる' do
      expect(@item).to be_valid
    end
    it '画像は1枚必須である' do
      @item.image = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Image can't be blank")
    end
    it '商品名が必須である' do
      @item.name = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Name can't be blank")
    end
    it '商品の説明が必須である' do
      @item.item_info = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Item info can't be blank")
    end
    it 'カテゴリーの情報が必須である' do
      @item.category_name_id = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Category name can't be blank")
    end
    it '商品の状態についての情報が必須である' do
      @item.condition_id = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Condition can't be blank")
    end
    it '配送料の負担についての情報が必須である' do
      @item.delivery_burden_id = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Delivery burden can't be blank")
    end
    it '発送元の地域についての情報が必須である' do
      @item.shipping_area_id = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Shipping area can't be blank")
    end
    it '発送までの日数についての情報が必須である' do
      @item.shipping_days_id = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Shipping days can't be blank")
    end
    it '価格についての情報が必須である' do
      @item.price = 'あああ'
      @item.valid?
      expect(@item.errors.full_messages).to include('Price is out of setting range')
    end
    it '価格の範囲が、¥300~¥9,999,999の間である' do
      @item.price = '18'
      @item.valid?
      expect(@item.errors.full_messages).to include('Price is out of setting range')
    end
    it '販売価格は半角数字のみ入力可能である' do
      @item.price = 'あああ'
      @item.valid?
      expect(@item.errors.full_messages).to include('Price is out of setting range')
    end
  end
end
