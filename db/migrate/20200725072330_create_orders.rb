class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :number
      t.integer :state, default: 0
      t.integer :user_id
      t.integer :subscription_id
      t.integer :cutoff_id
      t.string :cutoff_name
      t.integer :total_quantity
      t.decimal :total, precision: 10, scale: 2
      t.text :deliver_info

      t.timestamps
    end
  end
end
