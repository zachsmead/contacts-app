class User < ApplicationRecord
	has_secure_password
	has_many :contacts, through: :grouped_contacts
	has_many :grouped_contacts
	has_many :groups
end
