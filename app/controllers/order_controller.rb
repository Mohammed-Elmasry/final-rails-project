
class OrderController < ApplicationController

    def create
        puts "this is me calling create"
        @order = Order.new()
        @order.buyer_id = current_buyer.id
        @order.status = "Pending"
        @order.products<< current_buyer.products
        @order.save
        current_buyer.products = []
    end

    def new
        @order = Order.new
    end

    def index
        @arr = Array.new
        @orders = Order.where(status: "Pending").or(Order.where(status: "Confirmed"))
        puts "this is show_pending"
        @orders.each do |order|
            @arr.push(order)
        end
    end

    def update
        @order = Order.where(id: params[:id])[0]
        @order_status = @order.status
        case @order_status
        when "Pending"
            @order.update(status: "Confirmed")
            puts "ordered confirmed successfully"
        when "Confirmed"
            @order.update(status: "Delivered")
            puts "ordered delievered successfully"
        end
        redirect_to order_index_path
    end
end
