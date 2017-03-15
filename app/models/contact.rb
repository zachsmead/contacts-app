class Contact < ApplicationRecord

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
