class CartController < ApplicationController
  def edit #this is used as the add_to_cart method
    @product_id = params[:id]
    # begin
    if Product.find(@product_id).in_stock_quantity > 0
      @cart = Cart.where(product_id: @product_id, buyer_id: current_buyer.id)
      if @cart.present? #returned collection has record
        @cart[0].update(qty: @cart[0].qty + 1)
        puts "updated the quantity of this product in your cart"
      else #returned collection has no records
        puts "empty array returned"
        @cart = Cart.create(buyer_id: current_buyer.id, product_id: @product_id, qty: 1)
      end
    else
      puts "it's out of stock"
    end
    redirect_to products_url
  end
end
