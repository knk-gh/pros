class CreateGraffitis < ActiveRecord::Migration[5.2]
  def change
    create_table :graffitis do |t|
      t.integer :user_id
      t.string :graffiti_image_id
      t.text :graffiti_text
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
