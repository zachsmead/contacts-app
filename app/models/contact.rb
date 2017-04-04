class Contact < ApplicationRecord

	has_many :groups, through: :grouped_contacts
	has_many :users, through: :grouped_contacts
	has_many :grouped_contacts

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, uniqueness: true
	validates :longitude, :latitude, presence: true

	def friendly_time
		updated_at.strftime("%B %e, %Y")
	end

	def full_name
		return "#{first_name} #{last_name}"
	end

	def japanese_phone_number
		return "+81 #{phone_number}"
	end

	def find_johns

		if first_name.downcase == "john"
			return self.inspect
		end

	end


end
