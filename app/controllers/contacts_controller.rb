class ContactsController < ApplicationController

	before_action :authenticate_user!

	def index

		@title = "Contacts"

		group_id = params[:group_id]

		@group = current_user.groups.find_by(id: group_id)

		p "*" * 100
		p current_user.groups.find_by(id: group_id)
		p "*" * 100

		if group_id && @group
			@contacts = @group.contacts
		elsif group_id && !@group
			@contacts = Contact.all
			flash[:warning] = "Invalid group choice!"
		else
			@contacts = Contact.all
		end

		# p "*" * 100
		# p @contacts
		# p "*" * 100

	end

	def show
		@contact = Contact.find_by(id: params[:id])
		@groups = @contact.groups

		if current_user.id == @contact.user_id
			@contact = Contact.find_by(id: params[:id])
		else
			flash[:danger] = "You can't view this contact."
			redirect_to "/"
		end
	end

	def edit
		@contact = Contact.find_by(id: params[:id])
	end

	def update
		@contact = Contact.find_by(id: params[:id])

		coordinates = Geocoder.coordinates(params[:address])

		@contact.update(first_name:params[:first_name], middle_name:params[:middle_name],
			last_name:params[:last_name], email:params[:email], phone_number:params[:phone_number], bio:params[:bio],
			latitude:coordinates[0], longitude:coordinates[1])

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
		@contact = Contact.new
	end


	def create
		coordinates = Geocoder.coordinates(params[:address])

		@contact = Contact.new(first_name:params[:first_name], middle_name:params[:middle_name],
			last_name:params[:last_name], email:params[:email], phone_number:params[:phone_number], bio:params[:bio],
			latitude:coordinates.first, longitude:coordinates.last)

		if @contact.save
			flash[:success] = "Contact created"
			redirect_to "/contacts/#{@contact.id}"
		else
			flash[:danger] = "Unable to create contact!"
			render 'new.html.erb'
		end

	end

	def all_johns
		@contacts = Contact.all
	end	

end
