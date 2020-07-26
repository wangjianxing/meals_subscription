class Subscription < ApplicationRecord
  serialize :deliver_info, Hash

  enum state: { unactive: 0, active: 1, pause: 2 }

  belongs_to :user
  belongs_to :cutoff
  has_many :orders
  has_many :subscriptions_meals
  has_and_belongs_to_many :meals, join_table: 'subscriptions_meals', dependent: :destroy

  validates_presence_of :user_id, :cutoff_id, :deliver_info
end
