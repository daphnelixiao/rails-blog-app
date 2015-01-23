class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :first_name, :last_name, :avatar) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :first_name, :last_name, :avatar, :password, :password_confirmation) }
  end

end
