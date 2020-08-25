class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.integer :pin_code
      t.string :home_number
      t.string :near_by
      t.string :landmark

      t.timestamps
    end
  end
end
