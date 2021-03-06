class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_account



private

  def set_account
    @account ||= User.find_by(subdomain: request.subdomain)
  end

  def current_user
    @current_user ||= User.find_by(id: cookies[:user_id]) if cookies[:user_id]
  end

  def set_page
    @user ||= User.find_by(subdomain: request.subdomain)
    @page = @user.pages.all
  end


  helper_method :current_user
  helper_method :set_account
  helper_method :set_page

end
