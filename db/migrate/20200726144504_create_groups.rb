class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.integer :cutoff_id
      t.datetime :completed_at

      t.timestamps
    end
  end
end
