class Meal < ApplicationRecord
  enum state: { unactive: 0, active: 1 }

  has_and_belongs_to_many :subscriptions, join_table: 'subscriptions_meals', dependent: :destroy

  validates_uniqueness_of :name, :sku
  validates_presence_of :name, :description, :sku, :price
end
