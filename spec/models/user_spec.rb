require 'rails_helper'
RSpec.describe User, type: :model do
  describe 'ユーザー新規登録画面' do
    before do
      @user = FactoryBot.build(:user)
    end

    it '必須項目を入力し、ユーザー登録ができる' do
      expect(@user).to be_valid
    end

    it 'nicknameが6文字以下で登録できる' do
      @user.nickname = ''
      @user.valid?
      expect(@user.errors.full_messages).to include('Nickname is invalid. Input full-width characters.')
    end

    it 'メールアドレスが必須である' do
      @user.email = ''
      @user.valid?
      expect(@user.errors.full_messages).to include('Email is invalid')
    end

    it 'メールアドレスは一意性である' do
      @user.email = 'aaa@bbb'
      @user.valid?
      expect(@user.errors.full_messages).to include('Email is invalid. Input half-width characters.')
    end

    it 'メールアドレスは@を含む必要がある' do
      @user.email = 'aaabbb'
      @user.valid?
      expect(@user.errors.full_messages).to include('Email is invalid')
    end

    it 'パスワードは6文字以上である' do
      @user.password = '12345'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it 'パスワード確認用は6文字以上である' do
      @user.password_confirmation = '12345'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it 'パスワードは半角英数字混合である' do
      @user.password = 'ああああああ'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it 'パスワードは確認用を含めて2回入力する' do
      @user.password_confirmation = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it 'ユーザー本名の、名字は必須である' do
      @user.first_name = 'aaa'
      @user.valid?
      expect(@user.errors.full_messages).to include('First name is invalid. Input full-width characters.')
    end

    it 'ユーザー本名の、名前は必須である' do
      @user.last_name = 'aaa'
      @user.valid?
      expect(@user.errors.full_messages).to include('Last name is invalid. Input full-width characters.')
    end

    it 'ユーザー本名は、全角（漢字・ひらがな・カタカナ）で入力させる' do
      @user.first_name = 'aaa'
      @user.valid?
      expect(@user.errors.full_messages).to include('First name is invalid. Input full-width characters.')
    end

    it 'ユーザー本名は、全角（漢字・ひらがな・カタカナ）で入力させる' do
      @user.last_name = 'aaa'
      @user.valid?
      expect(@user.errors.full_messages).to include('Last name is invalid. Input full-width characters.')
    end

    it 'ユーザー本名のフリガナは、全角（カタカナ）で入力させる' do
      @user.first_name = 'aaa'
      @user.valid?
      expect(@user.errors.full_messages).to include('First name is invalid. Input full-width characters.')
    end

    it 'ユーザー本名のフリガナは、全角（カタカナ）で入力させる' do
      @user.last_name = 'aaa'
      @user.valid?
      expect(@user.errors.full_messages).to include('Last name is invalid. Input full-width characters.')
    end
    it '生年月日が必須である' do
      @user.birthday = 'あああああ'
      @user.valid?
      expect(@user.errors.full_messages).to include("Birthday can't be blank")
    end
    it 'パスワードが5文字以下であれば登録できないこと' do
      @user.password = '123456'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it 'パスワードの確認用は、5文字以下であれば登録できないこと' do
      @user.password_confirmation = '123456'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
  end
end

# it 'postal_codeが空だと保存できないこと' do
#   @user_donation.postal_code = nil
# @user_donation.valid?
# expect(@user_donation.errors.full_messages).to include("ssssss")
# end
