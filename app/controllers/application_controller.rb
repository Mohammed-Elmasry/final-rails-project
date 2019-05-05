class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end

  def current_ability
    if seller_signed_in?
      @current_ability ||= Ability.new(current_seller)
    elsif buyer_signed_in?
      @current_ability ||= Ability.new(current_buyer)
    else
      @current_ability ||= Ability.new(current_user)
    end
  end
end
