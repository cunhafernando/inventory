class CreateComputers < ActiveRecord::Migration[7.0]
  def change
    create_table :computers do |t|
      t.string :gati
      t.string :brand
      t.string :model
      t.string :serial_number
      t.string :patrimony

      t.timestamps
    end
  end
end
