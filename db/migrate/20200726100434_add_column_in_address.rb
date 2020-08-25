class AddColumnInAddress < ActiveRecord::Migration[6.0]
  def change
  	add_column :addresses, :district, :string
  	add_column :addresses, :locality, :string

  end
end
