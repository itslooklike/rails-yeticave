class WelcomeController < ApplicationController
  include ActionView::Helpers::NumberHelper

  def index
    @categories = Category.all
    @lots = @q.result(distinct: true)
  end
end
