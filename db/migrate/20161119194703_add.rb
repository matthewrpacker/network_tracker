class Add < ActiveRecord::Migration[5.0]
  def change
    add_reference :months, :contact, index: true
  end
end
