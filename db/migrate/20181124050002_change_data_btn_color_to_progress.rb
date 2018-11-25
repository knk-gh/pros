class ChangeDataBtnColorToProgress < ActiveRecord::Migration[5.2]
  def change
  	change_column :progresses, :btn_color, :string
  end
end
