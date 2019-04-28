class SellerController < ApplicationController
    before_action :authenticate_seller!
    protect_from_forgery prepend: true
end
