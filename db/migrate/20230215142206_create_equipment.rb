class CreateEquipment < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment do |t|
      t.string :kind_of_equipment
      t.string :gati
      t.string :brand
      t.string :model
      t.string :serial_number
      t.string :patrimony
      t.references :supplier
      t.boolean :allocate, default: false
      t.boolean :maintenance, default: false

      t.timestamps
    end
  end
end
