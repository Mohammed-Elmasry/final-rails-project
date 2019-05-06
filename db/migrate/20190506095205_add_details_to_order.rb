class AddDetailsToOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :OrderStatus, foreign_key: true
    add_reference :orders, :cart, foreign_key: true
  end
end
