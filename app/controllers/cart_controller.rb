class CartController < ApplicationController
  def edit
    @product_id = params[:id]
    begin
      @cart = Cart.where(buyer_id: current_buyer.id, product_id: @product_id)
    rescue Exception
      puts ("order isn't there")
      @cart = Cart.new(buyer_id: current_buyer.id, product_id: @product_id, qty: 1)
      @cart.save
      byebug
    end
    redirect_to products_url
  end

  private

  def add_to_cart()
    #logic
    puts ("ya bingo I got:  #{params}")
    redirect_to products_path
  end
end
