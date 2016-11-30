class Contact < ApplicationRecord
  belongs_to :user
  has_many :month_contacts
  has_many :months, through: :month_contacts
  
  validates :first_name, presence: true
  validates :last_name, presence: true
end
