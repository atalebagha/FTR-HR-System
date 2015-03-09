class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :fname
      t.string :lastname
      t.date :startdate
      t.integer :salary
      t.string :hphone

      t.timestamps null: false
    end
  end
end
