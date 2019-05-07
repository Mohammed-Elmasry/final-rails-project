class RemoveDetails < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :cart_id
    remove_column :buyers_products, :qty
  end
end
