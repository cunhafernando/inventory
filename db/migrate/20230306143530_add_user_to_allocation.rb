class AddUserToAllocation < ActiveRecord::Migration[7.0]
  def change
    add_reference :allocations, :user, null: false, foreign_key: true
  end
end
