class AddDefualtQuantityValueToSubscriptionsMeal < ActiveRecord::Migration[6.0]
  def change
    change_column_default :subscriptions_meals, :quantity, 1
  end
end
