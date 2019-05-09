class WelcomeController < ApplicationController
  def index
    @categories = Category.all
    @lots = @q.result(distinct: true)
  end
end
