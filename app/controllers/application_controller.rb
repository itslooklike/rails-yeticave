class ApplicationController < ActionController::Base
  before_action :for_footer

  protected

  def for_footer
    @footer_categories = Category.all
  end
end
