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
end


