class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  def require_login
    unless session[:user]
      redirect_to login_url
      return false
    end
  end

end
