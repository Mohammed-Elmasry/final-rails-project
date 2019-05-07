class CreateJoinTableBuyerProduct < ActiveRecord::Migration[5.2]
  def change
    create_join_table :buyers, :products do |t|
      t.index [:buyer_id, :product_id]
      t.index [:product_id, :buyer_id]
    end
  end
end
