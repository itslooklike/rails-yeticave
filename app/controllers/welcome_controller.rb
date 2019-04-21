class WelcomeController < ApplicationController
  def index
    @categories = Category.all
    @lots = Lot.all
  end
end
