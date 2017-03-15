class ContactsController < ApplicationController

	def index

		@title = "Contacts"

		@contact = Contact.first

		@contacts = Contact.all

	end

	def show
		@contact = Contact.find_by(id: params[:id])
	end

	def edit
		@contact = Contact.find_by(id: params[:id])
	end

	def update
		@contact = Contact.find_by(id: params[:id])

		@contact.update(first_name:params[:first_name],
			last_name:params[:last_name], email:params[:email], phone_number:params[:phone_number])

		redirect_to "/contacts/#{@contact.id}"

		flash[:info] = "Contact updated"
	end

	def destroy
		@contact = Contact.find_by(id: params[:id])
		@contact.destroy

		flash[:danger] = "Contact deleted"

		redirect_to "/contacts"
	end

	def new
	end


	def create
		@new_contact = Contact.create(first_name:params[:first_name],
			last_name:params[:last_name], email:params[:email], phone_number:params[:phone_number])

		redirect_to "/contacts/#{@new_contact.id}"

		flash[:success] = "Contact created"
	end

	def all_johns
		@contacts = Contact.all
	end	

end
