class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.date :start
      t.integer :days
      t.date :return
      t.integer :requesttype_id
      t.text :notes
      t.integer :employee_id

      t.timestamps null: false
    end
  end
end
