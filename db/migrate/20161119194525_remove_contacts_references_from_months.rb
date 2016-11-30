class RemoveContactsReferencesFromMonths < ActiveRecord::Migration[5.0]
  def change
    remove_reference(:months, :contacts, index: true)
  end
end
