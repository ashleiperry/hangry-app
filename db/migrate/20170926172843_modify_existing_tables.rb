class ModifyExistingTables < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :city, :string, null: false
    add_column :restaurants, :state, :string, null: false
    add_column :restaurants, :zip_code, :string, null: false

    add_column :orders, :user_id, :integer, null: false
  end
end
