class AddPrivateToProgress < ActiveRecord::Migration[5.2]
  def change
  	add_column :progresses, :private, :integer, default: 0
  end
end
