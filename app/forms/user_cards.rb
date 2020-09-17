class UserCards
  include ActiveModel::Model
  attr_accessor :name, :name_reading, :nickname, :postal_code, :shipping_area,
                :city, :phone, :building, :price, :shipping_area, :address_number, :commit, :item_id, :token, :user_id, :purchases_id

  # 「住所」の郵便番号に関するバリデーション
  # validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
  # 「寄付金」に関するバリデーション
  # validates :price, format: {with: /\A[0-9]+\z/, message: "is invalid. Input half-width characters."}
  # 「住所」の都道府県に関するバリデーション
  validates :shipping_area, numericality: { other_than: 0, message: "can't be blank" }
  validates :city, presence: true
  validates :address_number, presence: true
  validates :building, presence: true
  validates :phone, presence: true
  validates :postal_code, presence: true
  validates :shipping_area, presence: true

  def save
    # ユーザーの情報を保存し、「user」という変数に入れている
    # user = UserCards.create(name: name, name_reading: name_reading, nickname: nickname)
    # 住所の情報を保存
    # binding.pry
    purchases = Purchase.create(item_id: item_id, user_id: user_id)
    Address.create(postal_code: postal_code, address_number: address_number, phone: phone, city: city, building: building, shipping_area: shipping_area, purchases_id: purchases_id)
    # binding.pry
    # 寄付金の情報を保存
  end
end
