class AddQualificationInEmployee < ActiveRecord::Migration[6.0]
  def change
  	add_column :employees, :qualification, :string
  end
end
