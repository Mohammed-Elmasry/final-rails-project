class OrderController < ApplicationController
    def new
        @order = Order.new
    end

    def deliver
    end
    
    def confirm
    end

    def create
        puts "um here ya baba"
        @order = Order.create()
        puts "order created successfully"
        byebug
    end

    def place_order
        # @status = OrderStatus.new([Status_id: 1, name: "In pending"])
        # byebug
        # @order = Order.create(buyer_id: current_buyer.id, order_status: @status)
        # @order = Order.new(current_buyer.id , current_buyer.products[0].store_id)
        @buyer = current_buyer.id
        @store = current_buyer.products[0].store_id
        @order = Order.new(:buyer_id =>@buyer , :store_id => @store)
        # @order.buyer_id = @buyer
        # @order.store_id = @store
        byebug
        current_buyer.products.each do |product|
            @order.products<<product
        end
        # byebug
    end
end
