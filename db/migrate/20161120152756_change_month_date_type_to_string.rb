class ChangeMonthDateTypeToString < ActiveRecord::Migration[5.0]
  def change
    change_column :months, :date, :string
  end
end
