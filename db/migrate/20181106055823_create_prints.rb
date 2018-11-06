class CreatePrints < ActiveRecord::Migration[5.2]
  def change
    create_table :prints do |t|
      t.string :company
      t.string :company_url

      t.timestamps
    end
  end
end
