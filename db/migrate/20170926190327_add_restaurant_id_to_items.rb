class AddRestaurantIdToItems < ActiveRecord::Migration[5.1]
  def change
     add_column :items, :restaurant_id, :integer, default: "", null: false
  end
end
