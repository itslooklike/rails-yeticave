class LotsController < ApplicationController
  before_action :require_user, only: [:new]

  def show
    @categories = Category.all
    @lot = Lot.find params[:id]
    # @total_price = Bet.where(lot_id === params[:id])
  end

  def new
    @categories = Category.all
    @lot = Lot.new
  end

  def create
    @lot = Lot.new lot_params

    image_link = Uploader.upload(params[:lot][:image_url])
    @lot.image_url = image_link

    if @lot.save
      redirect_to @lot
    else
      @categories = Category.all
      render 'new'
    end
  end

  private

  def lot_params
    params.require(:lot).permit(:name, :description, :start_price, :bet_step, :finish_date, :category_id, :image_url)
  end
end
