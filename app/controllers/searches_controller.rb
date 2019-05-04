class SearchesController < ApplicationController
    def new
        @search = Search.new
        @categories = Category.distinct(:category)
        @brands = Brand.distinct(:brand)
        @stores = Store.distinct(:store)
    end
    def show
        @search = Search.find(params[:id])
    end
    def search_params
        params.require(:search).permit(:title , :description , :min_price , :max_price , :brand , :category)
    end
end
