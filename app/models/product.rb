class Product < ApplicationRecord
    has_one_attached :image
    validates :title, :description, :price, :in_stock_quantity ,:image , presence: true
    
end
