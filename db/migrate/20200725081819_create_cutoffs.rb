class CreateCutoffs < ActiveRecord::Migration[6.0]
  def change
    create_table :cutoffs do |t|
      t.string :name
      t.datetime :off_at

      t.timestamps
    end
  end
end
