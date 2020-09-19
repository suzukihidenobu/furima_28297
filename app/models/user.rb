class User < ApplicationRecord
  has_one :address
  has_one :purchases
  has_many :items
  has_many :purchases
  has_many :users, through: :purchases
  has_one :purchases, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, :first_name, :last_name,
            :first_name_kana, :last_name_kana,
            :birthday, :email, :encrypted_password, presence: true
end
