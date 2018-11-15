class CreateStepColors < ActiveRecord::Migration[5.2]
  def change
    create_table :step_colors do |t|
      t.integer :color
      t.integer :progress_id
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
