class RemoveUserFromMonths < ActiveRecord::Migration[5.0]
  def change
    remove_reference(:months, :user, index: true)
  end
end
