class Item < ApplicationRecord
  has_one :purchase
  belongs_to :user
  has_one_attached :image
  has_many :items

  has_one :item_order

  with_options presence: true do
  validates :image
  validates :name, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "は全角で入力してください。"}
  validates :price, format: { with: /\A[a-z0-9]+\z/i, message: "は半角英数で入力してください。"}
  validates :item_info
  validates :category_name
  validates :condition
  validates :delivery_burden
  validates :shipping_area
  validates :shipping_days 
  end
  validates :price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999, message: "is out of setting range"}
end

#「バリデーション」を設定します。「バリデーション」とは「送信する情報に制限をかける」というものです。
#例えば、名前を入力するときは「全角のみOK」というバリデーションは、まだカリキュラムでは学んでいません。
#そのような複雑なバリデーションを記述する際は、with_optionを使用します。

