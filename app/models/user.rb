class User < ApplicationRecord
  has_one :address
  has_one :purchases

  has_many :items
  has_many :purchases
  has_many :users, through: :purchases
  has_one :purchases, dependent: :destroy
  #       「dependent: :destroyオプション」とは、
  #       親モデルが削除された時、それに紐付ている子モデルも一緒に削除されるというオプションです。

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, :first_name, :last_name,
            :first_name_kana, :last_name_kana,
            :birthday, :email, :encrypted_password, presence: true
end

# Userモデルに、validates :name, presence: trueを追記します。
# 「name」カラムに、presence: trueを設けることで、空の場合はDBに保存しないというバリデーションを設定しています。
# つまり、ユーザー登録時に「name」を空欄にして登録しようとすると、エラーが発生します。
