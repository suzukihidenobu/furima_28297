class User < ApplicationRecord
  has_many :items
  has_many :purchases
  has_many :users, through: :purchases

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, :first_name, :last_name,
            :first_name_kana, :last_name_kana, 
            :birthday, :email, :encrypted_password ,presence: true

            # validates :name_reading,presence: true, format: { with: /\A[ァ-ヶー－]+\z/, message: "は全角カタカナで入力して下さい。"}
            # validates :nickname,presence: true, format: { with: /\A[a-z0-9]+\z/i, message: "は半角英数で入力してください。"}
            # format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "は全角で入力してください。"}
       end


