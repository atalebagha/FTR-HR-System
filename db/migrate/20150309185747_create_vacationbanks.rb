class CreateVacationbanks < ActiveRecord::Migration
  def change
    create_table :vacationbanks do |t|
      t.integer :allowed
      t.boolean :yearly
      t.integer :left

      t.timestamps null: false
    end
  end
end
