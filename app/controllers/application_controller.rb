class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
    protect_from_forgery with: :exception
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password,:username] )
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation,:username] )
      devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :password_confirmation,:username] )
    end
end