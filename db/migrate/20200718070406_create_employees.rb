class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :has_email
      t.date :date_of_joining
      t.integer :employee_id
      t.string :email

      t.timestamps
    end
  end
end
