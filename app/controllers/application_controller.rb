class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  after_filter :store_action
  
  def store_action
    return unless request.get? 
    if (request.path != "/users/sign_in" &&
        request.path != "/users/sign_up" &&
        request.path != "/users/password/new" &&
        request.path != "/users/password/edit" &&
        request.path != "/users/confirmation" &&
        request.path != "/users/sign_out" &&
        !request.xhr?) # don't store ajax calls
      store_location_for(:user, request.fullpath)
    end
  end
  
  protected
  # # For Devise
  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  # 	#Allow additional params for user
  #   devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :surname, :email, :phone, :password, :password_confirmation) }
  #   devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:login, :email, :password, :remember_me) }
  #   devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :surname, :email, :phone, :password, :password_confirmation, :current_password) }
  end
end
