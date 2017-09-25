class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :telephone_number, null: false
      t.string :hours_of_operation, null: false
      t.string :url
      t.timestamps
    end
  end
end
