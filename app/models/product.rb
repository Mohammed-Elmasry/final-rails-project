class Product < ApplicationRecord
    has_one_attached :image
    belongs_to :brand
    belongs_to :category
    validates :title, :description, :price, :in_stock_quantity ,:image , presence: true
    def self.search(search_title, search_descr)
        if search_title && search_descr
            where(["title LIKE ? and description LIKE ? ","%#{search_title}%" , "%#{search_descr}%"])
        else
        all
          end
    end 
end
