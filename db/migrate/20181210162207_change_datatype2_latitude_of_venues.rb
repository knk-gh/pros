class ChangeDatatype2LatitudeOfVenues < ActiveRecord::Migration[5.2]
  def change
  	change_column :venues, :latitude, :decimal, :precision => 10, :scale => 7
  	change_column :venues, :longitude, :decimal, :precision => 10, :scale => 7
  end
end
