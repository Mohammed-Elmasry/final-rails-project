class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :title
      t.text :description
      t.integer :min_price
      t.integer :max_price
      t.integer :brand_id
      t.integer :category_id
      t.integer :store_id

      t.timestamps
    end
  end
end
