class CreateRequesttypes < ActiveRecord::Migration
  def change
    create_table :requesttypes do |t|
      t.string :name
      t.boolean :deductpay
      t.boolean :deductdays

      t.timestamps null: false
    end
  end
end
