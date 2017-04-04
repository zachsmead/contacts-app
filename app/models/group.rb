class Group < ApplicationRecord
	has_many :contacts, through: :grouped_contacts
	has_many :grouped_contacts
	belongs_to :user
end
