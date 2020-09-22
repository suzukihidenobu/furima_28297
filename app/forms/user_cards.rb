class UserCards
  include ActiveModel::Model

  attr_accessor :name, :name_reading, :nickname, :postal_code, :shipping_area_id,
                :city, :phone, :building, :price, :address_number, :commit, :item_id, :token, :user_id, :purchase_id


  validates :shipping_area_id, numericality: { other_than: 0, message: "can't be blank" }
  validates :city, presence: true
  validates :address_number, presence: true
  validates :building, presence: true
  validates :phone, presence: true
  validates :postal_code, presence: true
  validates :shipping_area_id, presence: true
  def save
    purchase = Purchase.create(item_id: item_id, user_id: user_id)

    Address.create(postal_code: postal_code, address_number: address_number, phone: phone, city: city, building: building, shipping_area_id: shipping_area_id, purchase_id: purchase_id)
  end
 end
