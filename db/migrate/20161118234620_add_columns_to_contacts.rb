class AddColumnsToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column(:contacts, :date, :datetime)
    add_column(:contacts, :method, :string)
  end
end
