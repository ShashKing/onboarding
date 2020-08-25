class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :account_holder_name
      t.string :account_number
      t.string :bank_name
      t.string :ifsc_code
      t.string :branch_name

      t.timestamps
    end
  end
end
