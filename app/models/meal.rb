class Meal < ApplicationRecord
  enum state: { unactive: 0, active: 1 }

  validates_uniqueness_of :name, :sku
  validates_presence_of :name, :description, :sku, :price
end
