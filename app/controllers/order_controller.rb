
class OrderController < ApplicationController
    def index
    end

    def create
        puts "this is me calling create"
        # @order = Order.create([:buyer_id => current_buyer.id, :status => "Pending"])
        @order = Order.new()
        @order.buyer_id = current_buyer.id
        @order.status = "Pending"
        @order.products<< current_buyer.products
        @order.save
        # current_buyer.products.each do |product|
        #     @order.products<<product
        # end
        byebug
    end

    def new
        @order = Order.new
    end
    def show_pending
        @arr = Array.new
        @orders = Order.where(status: "Pending")
        @orders.each do |order|
            @arr.push(order)
            # @arr[0][:id].products[0]
        end
        # byebug
    end
end
