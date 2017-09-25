class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :name, null: false
      t.integer :restaurant_id, null: false
      t.text :description
      t.timestamps
    end
  end
end
