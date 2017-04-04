class AddUsersToGroupedContacts < ActiveRecord::Migration[5.0]
  def change
  	add_column :grouped_contacts, :user_id, :integer
  end
end
