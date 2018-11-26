class CreateNotices < ActiveRecord::Migration[5.2]
  def change
    create_table :notices do |t|
      t.integer :category
      t.text :text
      t.integer :user_id
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
