json.extract! product, :id, :title, :description, :price, :in_stock_quantity, :created_at, :updated_at
json.url product_url(product, format: :json)