class RemoveUserId < ActiveRecord::Migration[5.0]
  def change
  	remove_column :contacts, :user_id, :integer
  end
end
