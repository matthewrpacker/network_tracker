class RemoveContactColumnFromMonths < ActiveRecord::Migration[5.0]
  def change
    remove_reference(:months, :contact, index: true)
  end
end
