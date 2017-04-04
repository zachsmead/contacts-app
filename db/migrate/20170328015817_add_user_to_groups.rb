class AddUserToGroups < ActiveRecord::Migration[5.0]
  def change
  	add_column :groups, :user_id, :integer
  	remove_column :grouped_contacts, :user_id, :integer
  end
end
