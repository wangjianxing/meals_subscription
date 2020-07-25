class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.integer :user_id
      t.integer :cutoff_id
      t.integer :state, default: 1
      t.text :deliver_info

      t.timestamps
    end
  end
end
