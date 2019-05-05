class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :buyer, foreign_key: true
      t.references :store, foreign_key: true

      t.timestamps
    end
  end
end
