class CreateCutoffJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :cutoff_jobs do |t|
      t.integer :cutoff_id
      t.datetime :completed_at

      t.timestamps
    end
  end
end
