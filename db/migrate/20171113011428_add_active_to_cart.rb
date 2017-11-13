class AddActiveToCart < ActiveRecord::Migration[5.1]
  def change
    add_column :carts, :active, :boolean, default: false
    add_index :carts, :active
  end
end
