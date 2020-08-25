class AddReferenceOfAddressAndAccountInEmployee < ActiveRecord::Migration[6.0]
  def change
  	add_reference :addresses, :employee, forign_key: true
  	add_reference :accounts, :employee, forign_key: true
  end
end
