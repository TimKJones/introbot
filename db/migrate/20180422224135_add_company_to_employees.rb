class AddCompanyToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_reference :employees, :company
  end
end
