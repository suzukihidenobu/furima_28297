class UserCards
  include ActiveModel::Model

  attr_accessor :name, :name_reading, :nickname, :postal_code, :shipping_area_id,
                :city, :phone, :building, :price, :address_number, :commit, :item_id, :token, :user_id, :purchase_id
                
                with_options presence: true do
                validates :city
                validates :address_number
                validates :phone
                validates :postal_code
                validates :shipping_area_id
                end
  
                with_options numericality: { other_than: 0, message: "can't be blank" } do
                  validates :shipping_area_id
                end

  def save
    purchase = Purchase.create(item_id: item_id, user_id: user_id)

    Address.create(postal_code: postal_code, address_number: address_number, phone: phone, city: city, building: building, shipping_area_id: shipping_area_id, purchase_id: purchase.id)
  end
 end
