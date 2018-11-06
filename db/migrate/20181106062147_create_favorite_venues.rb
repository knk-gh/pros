class CreateFavoriteVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_venues do |t|
      t.integer :user_id
      t.integer :venue_id
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
