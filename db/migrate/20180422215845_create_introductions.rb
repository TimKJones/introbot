class CreateIntroductions < ActiveRecord::Migration[5.1]
  def change
    create_table :introductions do |t|
      t.date :scheduled_intro_date

      t.timestamps
    end
  end
end
