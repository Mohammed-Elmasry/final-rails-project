class Product < ApplicationRecord
    has_one_attached :image
    has_and_belongs_to_many :stores
    has_and_belongs_to_many :buyers
    has_and_belongs_to_many :orders
    belongs_to :brand
    belongs_to :category
    validates :title, :description, :price, :in_stock_quantity ,:image , presence: true
    def self.search(search)
        if search
            where(["title like ? ","%#{search}%"])
        else
            all
        end
    end 
end
