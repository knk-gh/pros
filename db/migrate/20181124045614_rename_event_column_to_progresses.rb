class RenameEventColumnToProgresses < ActiveRecord::Migration[5.2]
  def change
  	rename_column :progresses, :event, :btn_color
  end
end
