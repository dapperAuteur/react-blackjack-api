class ApplicationController < ActionController::API
    include ActionController::HttpAuthentication::Token::ControllerMethods
    
    before_action :authenticate

    protected

    # Authenticate the user with token based authentication
    def authenticate
        authenticate_token || render_unauthorized
    end
    
    def authenticate_token
        authenticate_with_http_token do |token, options|
            token == ENV['API_TOKEN']
        end
    end
    
    def render_unauthorized(realm = "Application")
        self.headers["WWW-Authenticate"] = %(Token realm="#{realm.gsub(/"/, "")}")
        render json: 'Bad credentials', status: :unauthorized
    end
end
