class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :first_name
      t.string :last_name
      t.string :enrollment
      t.string :department
      t.string :office
      t.integer :role
      t.string :password_digest

      t.timestamps
    end
  end
end
