class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
   before_filter :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me, :name) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me,:name) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password, :name) }
  end

  def after_sign_in_path_for(resource_or_scope)
    if(current_user)
  		student_dashboard_path
    else
      institute_dashboard_path
    end
  end
  
  def after_sign_out_path_for(resource_or_scope)
	'/home/index'
  end
   def after_sign_up_inactive_path_for(resource_or_scope)
    if(current_user)
      student_dashboard_path
    else
      institute_dashboard_path
    end
   end

   def after_sign_up_active_path_for(resource_or_scope)
    if(current_user)
      student_dashboard_path
    else
      institute_dashboard_path
    end
  end
end
