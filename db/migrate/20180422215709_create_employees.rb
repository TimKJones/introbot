class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.boolean :is_being_onboarded
      t.text :what_i_do
      t.text :fun_fact
      t.string :slack_username

      t.timestamps
    end
  end
end
