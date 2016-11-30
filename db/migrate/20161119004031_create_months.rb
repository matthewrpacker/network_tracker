class CreateMonths < ActiveRecord::Migration[5.0]
  def change
    create_table :months do |t|
      t.references :contacts, foreign_key: true
      t.string :method
      t.datetime :date
      t.integer :meeting, default: 0
    end
  end
end
