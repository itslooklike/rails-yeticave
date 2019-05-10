class WelcomeController < ApplicationController
  def index
    @categories = Category.all

    if params[:q]
      @lots = Lot.where('lower(name) LIKE ?', "%#{params[:q].downcase}%")
    elsif params[:category]
      @lots = Lot.where('category_id = ?', params[:category])
    else
      @lots = Lot.all
    end
  end
end
