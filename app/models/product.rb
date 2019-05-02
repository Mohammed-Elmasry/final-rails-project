class Product < ApplicationRecord
    has_one_attached :image
    belongs_to :brand
    belongs_to :category
    validates :title, :description, :price, :in_stock_quantity ,:image , presence: true
    def self.search(search_from , search_to)
        if search
            where(["title LIKE ? and description LIKE ? ","%#{search_from}%" , "%#{search_to}%"])
        else
        all
          end
    end 
end
