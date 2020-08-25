class AddResignDatePhoneNumberVerifyColumnInEmployee < ActiveRecord::Migration[6.0]
  def change
  	add_column :employees, :phone_number, :string
  	add_column :employees, :verify_email, :boolean, default: false
  	add_column :employees, :gender, :integer, default: 0
  	add_column :employees, :resign_date, :date
  	add_column :employees, :is_resign, :boolean, default: false
  end
end
