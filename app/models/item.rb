class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :item
  belongs_to_active_hash :category_name
  belongs_to_active_hash :condition
  belongs_to_active_hash :delivery_burden
  belongs_to_active_hash :shipping_area
  belongs_to_active_hash :shipping_days
  
  has_one :purchase
  belongs_to :user
  has_one_attached :image
  has_many :items

  has_one :item_order

  with_options presence: true do
    validates :image
    validates :name, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: 'は全角で入力してください。' }
    validates :price, format: { with: /\A[a-z0-9]+\z/i, message: 'は半角英数で入力してください。' }
    validates :item_info
    validates :category_name_id
    validates :condition_id
    validates :delivery_burden_id
    validates :shipping_area_id
    validates :shipping_days_id
  end
  validates :price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999, message: 'is out of setting range' }
end


