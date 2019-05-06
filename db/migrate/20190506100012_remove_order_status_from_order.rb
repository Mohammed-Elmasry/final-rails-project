class RemoveOrderStatusFromOrder < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :OrderStatus_id
    remove_column :orders, :Order_Status_id    
  end
end
