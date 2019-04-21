class LotsController < ApplicationController
  def show
    @categories = Category.all
    @lot = Lot.find params[:id]
  end
end
