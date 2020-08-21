class Item < ApplicationRecord
  has_one : purchase
  belongs_to : user
  has_many : items, through: :purchases
end
