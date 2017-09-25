class CreateUserPreferences < ActiveRecord::Migration[5.1]
  def change
    create_table :user_preferences do |t|
      t.integer :restaurant_id, null: false
      t.integer :user_id, null: false
      t.text :cuisine, null: false
      t.timestamps
    end
  end
end
