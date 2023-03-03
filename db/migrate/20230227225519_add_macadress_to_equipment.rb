class AddMacadressToEquipment < ActiveRecord::Migration[7.0]
  def change
    add_column :equipment, :macadress, :string
  end
end
