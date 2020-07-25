class LineItem < ApplicationRecord
  validates_uniqueness_of :order_id, scope: :meal_id
  validates_presence_of :name, :price, :quantity

  belongs_to :order
  belongs_to :meal
end
