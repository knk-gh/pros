class AddReportToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :report, :text
  end
end
