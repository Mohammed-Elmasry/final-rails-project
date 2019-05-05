class CartController < ApplicationController
  def index
    @carts = Cart.where(buyer_id: current_buyer.id)
    @arr = Array.new()
    if @carts.present? # if it's not an empty set
      @carts.each do |cart|
        @cartProduct = Hash.new()
        @product = Product.find(cart.product.id)
        puts "the product is #{@product.title}"
        @cartProduct[:product_name] = @product.title
        @cartProduct[:product_price] = @product.price
        @cartProduct[:product_image] = @product.image
        @cartProduct[:quantity] = cart.qty
        @cartProduct[:product_total] = @product.price * cart.qty
        @arr.push(@cartProduct)
      end
      # byebug
    else
      puts "products don't exist"
    end
  end

  def edit #this is used as the add_to_cart method
    @product_id = params[:id]
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

  private

  def empty
  end
end
