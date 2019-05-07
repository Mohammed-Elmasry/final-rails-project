class OrderController < ApplicationController
    def deliver
    end
    
    def confirm
    end

    def create
    end

    def place_order

        @carts = Cart.where(buyer_id: current_buyer.id)
        if @carts.empty?
            puts "it's empty"
        else
            puts "it's not empty"
        end
        puts "this is the cart: #{@carts}"
    end
end
