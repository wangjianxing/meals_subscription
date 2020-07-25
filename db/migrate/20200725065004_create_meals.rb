class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 10, scale: 2
      t.string :sku
      t.integer :state, default: 1

      t.timestamps
    end
  end
end
