class AddColumnToMonths < ActiveRecord::Migration[5.0]
  def change
    add_column :months, :name, :string
  end
end
