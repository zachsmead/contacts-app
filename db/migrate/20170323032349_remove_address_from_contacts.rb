class RemoveAddressFromContacts < ActiveRecord::Migration[5.0]
  def change
  	remove_column :contacts, :address, :text
  end
end
