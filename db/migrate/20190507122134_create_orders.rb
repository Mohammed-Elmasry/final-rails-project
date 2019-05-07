class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
  
      t.timestamps
    end
    add_reference :orders, :buyer, foreign_key: true
    add_column :orders, :status, :string
  end
end
