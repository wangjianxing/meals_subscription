class SubscriptionsMeal < ApplicationRecord
  belongs_to :subscription
  belongs_to :meal

  validates_uniqueness_of :subscription_id, scope: :meal_id
  validates_presence_of :subscription_id, :meal_id, :quantity
end
