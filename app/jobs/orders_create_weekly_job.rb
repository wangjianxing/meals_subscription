class OrdersCreateWeeklyJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    Cutoff.all.each do |cutoff|
      next unless cutoff.off_time? && !cutoff.week_orders_created?

      Order.transaction do
        group = cutoff.groups.create!(completed_at: cutoff.week.end)
        Subscription.old(cutoff).active.each do |subscription|
          Order.create_by_subscription!(subscription, group.id)
        end
      end
    end
  end
end
