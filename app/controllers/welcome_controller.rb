class WelcomeController < ApplicationController
  include ActionView::Helpers::NumberHelper

  def index
    @categories = Category.all
    @lots = Lot.all
  end
end
