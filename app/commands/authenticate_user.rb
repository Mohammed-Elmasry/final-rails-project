class AuthenticateBuyer
    prepend SimpleCommand
    def initialize(email, password)
        @email = email
        @password = password
    end
    def call
        JsonWebToken.encode(buyer_id: buyer.id) if buyer
     end
     private

        attr_accessor :email, :password
        def buyer
            buyer = Buyer.find_by_email(email)
            return buyer if buyer && buyer.authenticate(password)
        
            errors.add :buyer_authentication, 'invalid credentials'
            nil
        end
end