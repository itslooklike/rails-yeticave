class LotsController < ApplicationController
  def show
    @categories = Category.all
    @lot = Lot.find params[:id]
  end

  def new
    @categories = Category.all
    @lot = Lot.new
  end

  def create
    @categories = Category.all
  end
end
