class CreateProgresses < ActiveRecord::Migration[5.2]
  def change
    create_table :progresses do |t|
      t.integer :user_id
      t.date :dead_line
      t.date :event
      t.string :work_name
      t.text :message
      t.integer :page
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
