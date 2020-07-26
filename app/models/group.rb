class Group < ApplicationRecord
  belongs_to :cutoff
  has_many :orders

  def group_orders
    orders.or(cutoff.orders.where(created_at: 1.week.ago(completed_at)..completed_at))
  end
end
