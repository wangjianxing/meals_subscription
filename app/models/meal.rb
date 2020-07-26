class Meal < ApplicationRecord
  enum state: { unactive: 0, active: 1 }

  has_and_belongs_to_many :subscriptions, join_table: 'subscriptions_meals', dependent: :destroy

  validates_uniqueness_of :name, :sku
  validates_presence_of :name, :description, :sku, :price

  # sort by SubscriptionsMeal's meal count
  def self.popular_meals
    meals_count = SubscriptionsMeal.where(subscription_id: Subscription.active.ids).group(:meal_id).count
    sorted_by_count_meal_ids = meals_count.sort { |a, b| b[1] <=> a[1] }.map { |mc| mc[0] }
    Meal.where(id: sorted_by_count_meal_ids.first(10))
  end
end
