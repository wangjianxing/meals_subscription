class Order < ApplicationRecord
  serialize :deliver_info, Hash

  enum state: { pending: 0, delivery: 1, complete: 2 }

  belongs_to :user
  belongs_to :subscription
  has_many :line_items

  validates_uniqueness_of :number
  validates_presence_of :number

  before_validation :set_number, on: :create

  def self.create_by_subscription!(subscription)
    Order.transaction do
      the_order = subscription.orders.create!(user_id: subscription.user_id, cutoff_id: subscription.cutoff.id, 
                                              cutoff_name: subscription.cutoff.name, deliver_info: subscription.deliver_info,
                                              total_quantity: subscription.meals.size, total: subscription.meals.sum(:price))
      subscription.meals.each do |meal|
        the_order.line_items.create!(meal_id: meal.id, name: meal.name, price: meal.price, quantity: subscription.subscriptions_meals.find_by(meal_id: meal.id).quantity)
      end
    end
  end

  private

  def set_number
    self.number = generate_number
  end

  def generate_number
    the_number = ''
    loop do
      the_number = "MS_#{DateTime.now.to_i}#{rand(1000...9999)}"
      break if Order.find_by(number: the_number).nil?
    end
    the_number
  end
end
