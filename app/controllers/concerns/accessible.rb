module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end

  protected

  def check_user
    if current_seller
      flash.clear
      # if you have rails_seller. You can redirect to sellers' root path
      redirect_to(seller_session_path) && return
    elsif current_user
      flash.clear
      # The authenticated root path can be defined in your routes.rb in: devise_scope :user do...
      redirect_to(user_session_path) && return
    elsif current_buyer
      flash.clear
      redirect_to(buyer_session_path) && return
    end
  end
end
