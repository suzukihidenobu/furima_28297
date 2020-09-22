class UserCards
  include ActiveModel::Model
  attr_accessor :name, :name_reading, :nickname, :postal_code, :_id,
                :city, :phone, :building, :price, :shipping_area_id, :address_number, :commit, :item_id, :token, :user_id, :purchases_id
                with_options presence: true do
                  validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, messsgge: "は「-」も入力してください"}
                  validates :shipping_area_id, numericality: { other_than: 0, message: "can't be blank" }
                  validates :city
                  validates :address_number
                  validates :building
                  validates :phone, format: { with: /\A0\d{9,10}\Z/, message: "ハイフンは不要で、11桁以内である"}
                  end
                  def save
                    purchase = Purchase.create(item_id: item_id, user_id: user_id)
                    Address.create(postal_code: postal_code, address_number: address_number, phone: phone, city: city, building: building, shipping_area_id: shipping_area_id, purchase_id: purchase.id)
                  end
                end
