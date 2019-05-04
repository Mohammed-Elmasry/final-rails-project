class ApplicationApiController < ActionController::API
    before_action :authenticate_request
     attr_reader :current_buyer
   
     private
   
     def authenticate_request
       @current_buyer = AuthorizeApiRequest.call(request.headers).result
       render json: { error: 'Not Authorized' }, status: 401 unless @current_buyer
     end
   end