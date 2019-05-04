class AuthenticateApiuser
    prepend SimpleCommand
    def initialize(email, password)
        @email = email
        @password = password
    end
    def call
        JsonWebToken.encode(apiuser_id: apiuser.id) if apiuser
     end
     private
    apiuser
        attr_accessor :email, :password
        def apiuser
            apiuser = Apiuser.find_by_email(email)
            return apiuser if apiuser && apiuser.authenticate(password)
        
            errors.add :apiuser_authentication, 'invalid credentials'
            nil
        end
end