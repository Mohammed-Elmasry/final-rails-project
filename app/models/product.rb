class Product < ApplicationRecord
    has_one_attached :image
    belongs_to :brand
    belongs_to :category
    validates :title, :description, :price, :in_stock_quantity ,:image , presence: true
    def self.search(search)
        if search
            where(["title LIKE ? ","%#{search}%" ])
        else
        all
          end
    end 
end
