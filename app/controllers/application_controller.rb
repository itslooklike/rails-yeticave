class ApplicationController < ActionController::Base
  before_action :for_footer, :current_user

  def require_user
    redirect_to '/login' unless current_user
  end

  protected

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def for_footer
    @footer_categories = Category.all
  end
end
