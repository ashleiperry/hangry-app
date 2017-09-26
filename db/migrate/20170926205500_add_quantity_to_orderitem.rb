class AddQuantityToOrderitem < ActiveRecord::Migration[5.1]
  def change
    add_column :order_items, :quantity, :integer, default: "", null: false
  end
end
