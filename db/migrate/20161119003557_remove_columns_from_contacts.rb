class RemoveColumnsFromContacts < ActiveRecord::Migration[5.0]
  def change
    remove_column :contacts, :date, :string
    remove_column :contacts, :method, :string
  end
end
