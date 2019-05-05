class CreateProductStoreJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :products , :stores
    create_join_table :products , :stores do |t|
      t.index :product_id
      t.index :store_id
    end
  end
end
