class Subscription < ApplicationRecord
  enum state: { unactive: 0, active: 1, pause: 2 }

  belongs_to :user
  belongs_to :cutoff
  has_many :orders
  has_many :subscriptions_meals
  has_many :meals, through: :subscriptions_meals

  validates_presence_of :user_id, :cutoff_id, :deliver_info
end
