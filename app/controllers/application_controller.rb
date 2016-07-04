class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) do |user_params|
        user_params.permit(:username, :first_name, :last_name, :email, :password, :password_confirmation)
      end
    end
end
