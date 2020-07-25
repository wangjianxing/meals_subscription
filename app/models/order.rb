class Order < ApplicationRecord
  enum state: { pending: 0, delivery: 1, complete: 2 }

  belongs_to :user
  belongs_to :subscription
  has_many :line_items

  validates_uniqueness_of :number
  validates_presence_of :number
end
