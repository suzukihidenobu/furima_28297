class Purchases < ApplicationRecord
  has_one :address
  belongs_to :user #cardモデル（子モデル）user（親モデル）が削除された時にcard（子モデル）も削除される、
  belongs_to :item

  has_many_attached :images
  validates :content, presence: true
end
