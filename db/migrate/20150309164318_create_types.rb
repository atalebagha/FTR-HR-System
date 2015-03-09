class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :name
      t.string :code
      t.boolean :hourly
      t.integer :weekdays
      t.integer :employee_id
      t.integer :weeklyhourss

      t.timestamps null: false
    end
  end
end
