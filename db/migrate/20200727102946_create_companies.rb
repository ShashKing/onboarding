class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :previous_company
      t.string :total_experience
      t.string :previous_designtion
      t.string :designation

      t.timestamps
    end
  end
end
