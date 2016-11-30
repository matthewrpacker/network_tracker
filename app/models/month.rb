class Month < ApplicationRecord
  has_many :month_contacts
  has_many :contacts, through: :month_contacts

  def self.create_all
    months = [
      "Jan", "Feb", "Mar", "Apr", "May", "Jun",
      "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
    ]
    months.each do |month|
      create(date: Date.today.to_s, name: month, contact_id: Contact.last.id)
    end
  end

  def self.list
    ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
  end

  def self.days
    num = *(1..31)
    num.map(&:to_s)
  end
end
