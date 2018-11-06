class CreateWorries < ActiveRecord::Migration[5.2]
  def change
    create_table :worries do |t|
      t.integer :user_id
      t.integer :progress_id
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
