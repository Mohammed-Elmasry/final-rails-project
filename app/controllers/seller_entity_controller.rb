class SellerEntityController < ApplicationController
  
  # GET /resource/sign_up
   def new
     @seller = Seller.new
   end

  # POST /resource
  
  def create
    if can? :create, Seller
      @seller = Seller.new(seller_params)
      if @seller.save
        redirect_to @seller
      else
        render 'new'
      end      
    else
      authorize! :create, Seller
    end
  end
end
