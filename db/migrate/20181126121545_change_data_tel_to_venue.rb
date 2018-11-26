class ChangeDataTelToVenue < ActiveRecord::Migration[5.2]
  def change
  	change_column :venues, :postal_code, :string
  	change_column :venues, :tel, :string
  end
end
