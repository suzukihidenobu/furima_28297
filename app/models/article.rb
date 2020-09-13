class Article < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :Category_name

  # ActiveHash::Associations::ActiveRecordExtensionsについては、詳細の説明は省きますが、
  # この記述をArticleクラスに記述する事で、belongs_to_active_hashメソッドを使用できます。

  # 空の投稿を保存できないようにする
  validates :title, :text, :Category_name, presence: true

  # ジャンルの選択が「--」の時は保存できないようにする
  validates :Category_name_id, numericality: { other_than: 1 }
end
