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
        redirect_to(rails_seller.dashboard_path) && return
      elsif current_user
        flash.clear
        # The authenticated root path can be defined in your routes.rb in: devise_scope :user do...
        redirect_to(authenticated_user_root_path) && return
      end
    end
  end