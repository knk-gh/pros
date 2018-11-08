class AddDeletedAtToPrint < ActiveRecord::Migration[5.2]
  def change
    add_column :prints, :deleted_at, :datetime
  end
end
