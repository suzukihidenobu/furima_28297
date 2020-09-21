require 'rails_helper'

# RSpec.describe UserDonation, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"

  RSpec.describe UserDonation, type: :model do
    describe '商品購入機能の確認' do
      before do
        @user_donation = FactoryBot.build(:user_donation)
      end

      it 'ログインしていないユーザーは購入ページに遷移しようとすると、ログインページに遷移する' do
      end
      it '出品者はURLを直接入力して購入ページに遷移しようとすると、トップページに遷移する' do
      end
      it 'URLを直接入力して購入済み商品の購入ページへ遷移しようとすると、トップページに遷移する' do
      end
      it 'クレジットカード決済ができる' do
      end
      it 'クレジットカードの情報は購入の都度入力させる' do
      end
      it '配送先の住所情報も購入の都度入力させる' do
      end
      it '配送先の情報として、郵便番号・都道府県・市区町村・番地・電話番号が必須である' do
      end
      it 'postal_codeが空だと保存できないこと' do
        @user_donation.postal_code = nil
      @user_donation.valid?
      expect(@user_donation.errors.full_messages).to include("ssssss")
      end
      it '郵便番号にはハイフンが必要である（123-4567となる）' do
      end
      it '電話番号にはハイフンは不要で、11桁以内である' do
      end
      it '購入が完了したら、トップページまたは購入完了ページに遷移する' do
      end
      it '購入した商品は、再度購入できない状態になっている' do
      end
      it 'モデルの単体テストコードが書けている' do
      end
      it 'エラーハンドリングができている（適切では無い値が入力された場合、情報は保存されず、エラーメッセージを出力させる）' do
      end
    end
  end

