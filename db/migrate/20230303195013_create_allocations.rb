class CreateAllocations < ActiveRecord::Migration[7.0]
  def change
    create_table :allocations do |t|
      t.integer :unit
      t.string :office

      t.timestamps
    end
  end
end
