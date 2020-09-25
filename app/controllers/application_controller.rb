class ApplicationController < ActionController::API
    before_action :configure_permitted_parameters, if: :devise_controller?

    include Response
    include Authenticate
    include SerializableResource

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name) }
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name) }
    end
end
