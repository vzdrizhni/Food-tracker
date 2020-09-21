module Authenticate
    def current_user
      auth_token = request.headers["AUTH-TOKEN"]
      return unless auth_token
      @current_user = User.find_by authentication_token: auth_token
    end
end