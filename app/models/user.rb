class User < ApplicationRecord
    before_create :generate_token
    
    private
    def generate_token
        self.token = SecureRandom.urlsafe_base64(8)
    end
end
