class CreateJoinTableEmployeeIntroduction < ActiveRecord::Migration[5.1]
  def change
    create_join_table :employees, :introductions do |t|
      # t.index [:employee_id, :introduction_id]
      # t.index [:introduction_id, :employee_id]
    end
  end
end
