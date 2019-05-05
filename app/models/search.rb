class Search < ApplicationRecord
    def products
        @products ||= find_products
    end
    private
    def find_products
        products = Product.order(:title)
        products = products.where("title LIKE ?" , "%#{title}%") if title.present?
        products = products.where(category_id: category_id) if category_id.present?
        products = products.where(brand_id: brand_id) if brand_id.present?
        products = products.where(store_id: store_id) if store_id.present?
        products = products.where("price >= ?" , min_price) if min_price.present?
        products = products.where("price <= ?" , max_price) if max_price.present?
        return products
    end
end
