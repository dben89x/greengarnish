class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_admin?
  after_filter :store_location, unless: :devise_controller?
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

  def after_sign_in_path_for(resource)
    session[:previous_url] || blog_posts_path
  end

  def after_sign_out_path_for(resource_or_scope)
    '/users/sign_in'
  end

  def store_location
    return unless request.get?
    if !request.xhr?
      session[:previous_url] = request.fullpath
    end
  end

  def user_root_path
    if current_user
      blog_posts_path
    else
      root_path
    end
  end

end
