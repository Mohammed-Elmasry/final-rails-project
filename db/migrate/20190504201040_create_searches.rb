class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :title
      t.text :description
      t.integer :min_price
      t.integer :max_price
      t.string :brand
      t.string :category
      t.string :store

      t.timestamps
    end
  end
end
