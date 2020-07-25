class Cutoff < ApplicationRecord
  validates_presence_of :name, :off_at

  has_many :subscriptions
end
