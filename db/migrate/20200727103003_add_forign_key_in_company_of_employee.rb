class AddForignKeyInCompanyOfEmployee < ActiveRecord::Migration[6.0]
  def change
  	add_reference :companies, :employee, foriegn: true
  end
end
