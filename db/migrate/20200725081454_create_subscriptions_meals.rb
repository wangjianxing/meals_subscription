class CreateSubscriptionsMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions_meals do |t|
      t.integer :subscription_id
      t.integer :meal_id
      t.integer :quantity

      t.timestamps
    end
  end
end
