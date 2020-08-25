class AddAdharPanInEmployees < ActiveRecord::Migration[6.0]
  def change
  	add_column :employees, :adhar_card, :string
  	add_column :employees, :pan_card, :string
  end
end
