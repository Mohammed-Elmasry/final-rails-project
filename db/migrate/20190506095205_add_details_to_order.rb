class AddDetailsToOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :order_status, foreign_key: true
    add_reference :orders, :cart, foreign_key: true
  end
end
