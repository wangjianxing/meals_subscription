class CreateLineItems < ActiveRecord::Migration[6.0]
  def change
    create_table :line_items do |t|
      t.integer :order_id
      t.integer :meal_id
      t.string :name
      t.decimal :price, precision: 10, scale: 2
      t.integer :quantity

      t.timestamps
    end
  end
end
