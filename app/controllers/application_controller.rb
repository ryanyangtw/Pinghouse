class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception



  def admin_required
    redirect_to admin_path if current_administrator.nil?
  end

  def authenticate_user!
    current_administrator.present?
  end


  helper_method :current_administrator

  def current_administrator
    @current_administrator ||= find_administrator
  end

  def find_administrator
    administrator = User.find_by(:id => session[:user_id])

    administrator
  end

end
