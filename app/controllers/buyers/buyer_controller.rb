class Buyers::BuyerController < ApplicationController

  def add_to_cart
    # @product = Product.find(params[:id])
    
    current_buyer.products<<Product.find(params[:id])
    redirect_to products_url
    # byebug
  end

  def show_cart
    @overall = 0
    @arr = Array.new
    @products = current_buyer.products
    @products.each do |product|
      @cartProduct = Hash.new
      @cartProduct[:title] = product.title
      @cartProduct[:price] = product.price
      @cartProduct[:quantity] = current_buyer.products.where(id: product.id).length
      @cartProduct[:total] = @cartProduct[:price] * @cartProduct[:quantity]
      if @arr.any? @cartProduct
        nil
      else
        @arr.push(@cartProduct)
        @overall+=@cartProduct[:total]
      end
    end
    # byebug
  end
end
