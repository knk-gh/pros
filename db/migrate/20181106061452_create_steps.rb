class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.integer :progress_id
      t.string :step_name
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
