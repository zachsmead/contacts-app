class CreateUserOwnedGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :user_owned_groups do |t|
      t.integer :user_id
      t.integer :group_id

      t.timestamps
    end
  end
end
