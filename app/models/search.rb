class Search < ApplicationRecord
    def search_products
        products = Product.all
        products = products.where(["title LIKE ?" , "%#{title}%"]) if title.present?
        products = products.where(["category LIKE ?" , "%#{category}%"]) if category.present?
        products = products.where(["store LIKE ? " , "%#{store}%"]) if store.present?
        products = products.where(["description LIKE ? " , "%#{description}%"]) if description.present?
        products = products.where(["price >= ?" , min_price]) if min_price.present?
        products = products.where(["price <= ?" , max_price]) if max_price.present?
        products = products.where(["brand LIKE ?" , "%#{brand}%"]) if brand.present?

        return products
    end 
end
