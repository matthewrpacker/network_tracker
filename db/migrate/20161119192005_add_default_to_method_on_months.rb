class AddDefaultToMethodOnMonths < ActiveRecord::Migration[5.0]
  def change
     change_column_default :months, :method, "N/A"
  end
end
