class CartController < ApplicationController
  def edit
    @product_id = params[:id]
    begin
      @cart = Cart.where(product_id: @product_id, buyer_id: current_buyer.id)
      if @cart.present? #returned collection has record
        puts("I have the record #{@cart[0].product_id}")
        puts "the quantity is: #{@cart[0].qty}"
        @cart[0].update(qty: @cart[0].qty + 1)
      else #returned collection has no records
        puts "empty array returned"
        @cart = Cart.create(buyer_id: current_buyer.id, product_id: @product_id, qty: 1)
      end
      # byebug
    rescue #catch exception in case where method returned an empty set
      puts "product is never added before"
      @cart = Cart.create(buyer_id: current_buyer.id, product_id: @product_id, qty: 1)
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
