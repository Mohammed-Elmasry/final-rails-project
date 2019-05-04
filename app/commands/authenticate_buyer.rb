class AuthenticateApiUser
    prepend SimpleCommand
    def initialize(email, password)
        @email = email
        @password = password
    end
    def call
        JsonWebToken.encode(api_user_id: api_user.id) if api_user
     end
     private
    api_user
        attr_accessor :email, :password
        def api_user
            api_user = ApiUser.find_by_email(email)
            return api_user if api_user && api_user.authenticate(password)
        
            errors.add :api_user_authentication, 'invalid credentials'
            nil
        end
end