class UserCards
  include ActiveModel::Model
  attr_accessor :name, :name_reading, :nickname, :postal_code, :shipping_area,
                :city, :phone, :building, :price, :shipping_area, :address_number, :commit, :item_id, :token, :user_id, :purchases_id

  validates :shipping_area, numericality: { other_than: 0, message: "can't be blank" }
  validates :city, presence: true
  validates :address_number, presence: true
  validates :building, presence: true
  validates :phone, presence: true
  validates :postal_code, presence: true
  validates :shipping_area, presence: true

  def save
    purchases = Purchase.create(item_id: item_id, user_id: user_id)
    Address.create(postal_code: postal_code, address_number: address_number, phone: phone, city: city, building: building, shipping_area: shipping_area, purchases_id: purchases_id)
  end
end
