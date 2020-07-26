class Cutoff < ApplicationRecord
  validates_presence_of :name, :off_at

  has_many :subscriptions
  has_many :cutoff_jobs

  def week
    off_datetime = DateTime.now.all_week.to_a[off_at.wday - 1] + (off_at.localtime.seconds_since_midnight).seconds
    1.week.ago(off_datetime)..off_datetime
  end

  def off_time?
    DateTime.now >= week.end
  end

  def week_orders_created?
    cutoff_jobs&.last&.completed_at == week.end
  end
end
