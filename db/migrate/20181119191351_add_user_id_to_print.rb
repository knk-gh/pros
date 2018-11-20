class AddUserIdToPrint < ActiveRecord::Migration[5.2]
  def change
    add_column :prints, :user_id, :integer
  end
end
