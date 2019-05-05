class CreateCart < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.reference :buyer, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :qty
    end
  end
end
