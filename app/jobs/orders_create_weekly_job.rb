class OrdersCreateWeeklyJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    Cutoff.all.each do |cutoff|
      next unless cutoff.off_time? && !cutoff.week_orders_created?

      Order.transaction do
        Subscription.old(cutoff).active.each do |subscription|
          Order.create_by_subscription!(subscription)
        end
        cutoff.cutoff_jobs.create!(completed_at: cutoff.week.end)
      end
    end
  end
end
