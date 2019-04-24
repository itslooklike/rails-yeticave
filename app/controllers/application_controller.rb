class ApplicationController < ActionController::Base
  before_action :for_footer
  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_user
    redirect_to '/login' unless current_user
  end

  def logged_in?
    current_user != nil
  end

  protected

  def for_footer
    @footer_categories = Category.all
  end
end
