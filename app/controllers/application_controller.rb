class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_admin?
  # before_action :authenticate_user!
  # before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # devise_parameter_sanitizer.for(:sign_up) << :username
    # devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :email) }
  end

  def current_admin?
    current_user and current_user.admin == true
  end
end
