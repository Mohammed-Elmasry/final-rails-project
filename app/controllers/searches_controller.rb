class SearchesController < ApplicationController
    def new
        @search = Search.new
        @categories = Category.distinct(:category)
        @brands = Brand.distinct(:brand)
        @stores = Store.distinct(:store)
    end
end
