class Item < ApplicationRecord
  has_one :purchase
  belongs_to :user
  has_one_attached :image
  has_many :items, through: :purchases

  has_one :item_order

  with_options presence: true do
  validates :image, presence: true
  
  validates :name, presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "は全角で入力してください。"}
  validates :price, presence: true, format: { with: /\A[a-z0-9]+\z/i, message: "は半角英数で入力してください。"}
  validates :item_info, presence: true
  validates :category_name, presence: true
  validates :condition, presence: true
  validates :delivery_burden, presence: true
  validates :shipping_area, presence: true
  validates :shipping_days, presence: true
  

end
end

#「バリデーション」を設定します。「バリデーション」とは「送信する情報に制限をかける」というものです。
#例えば、名前を入力するときは「全角のみOK」というバリデーションは、まだカリキュラムでは学んでいません。
#そのような複雑なバリデーションを記述する際は、with_optionを使用します。