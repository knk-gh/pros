class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :venue_name
      t.integer :postal_code
      t.text :address
      t.integer :tel
      t.string :venue_url
      t.float :latitude
      t.float :longitude
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
