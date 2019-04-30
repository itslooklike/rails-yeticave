class ApplicationController < ActionController::Base
  before_action :for_footer, :init_header, :current_user

  def require_user
    redirect_to '/login' unless current_user
  end

  protected

  def init_header
    @q = Lot.ransack(params[:q])
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def for_footer
    @footer_categories = Category.all
  end
end
