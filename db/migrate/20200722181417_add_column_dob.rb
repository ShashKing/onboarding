class AddColumnDob < ActiveRecord::Migration[6.0]
  def change
  	add_column :employees, :date_of_birth, :date
  	add_column :employees, :desugnation, :string

  end
end
