class Article < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :Category_name
  validates :title, :text, :Category_name, presence: true
  validates :Category_name_id, numericality: { other_than: 1 }
end
