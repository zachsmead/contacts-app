class AddAddress < ActiveRecord::Migration[5.0]
  def change
  	add_column :contacts, :address, :text
  end
end
