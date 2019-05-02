class SellerObjectsController < ApplicationController
    def new
        # @seller = Seller.new()
    end

    def create
        # @seller = Seller.new()
        @seller = Seller.new(params.require(:seller).permit(:email, :password, :store_id))
        if @seller.save
            render 'new'
            flash[:success] = "Seller created Successfully"
        else
            render 'new'
            flash[:error] = "Couldn't create Seller, try again!"
        end
    end

    def index
        @sellers = Seller.all
    end

    def show
        @seller = Seller.find(params[:id])
    end
end
