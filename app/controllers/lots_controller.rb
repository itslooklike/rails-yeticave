class LotsController < ApplicationController
  before_action :require_user, only: [:new]

  def show
    @categories = Category.all
    @lot = Lot.find params[:id]
    @total_price = Bet.where(lot_id: params[:id]).sum(:sum) + @lot.start_price

    @bet = @lot.bets.build
  end

  def new
    @categories = Category.all
    @lot = Lot.new
  end

  def create
    @lot = Lot.new lot_params

    if @lot.save
      redirect_to @lot
    else
      @categories = Category.all
      render 'new'
    end
  end

  private

  def lot_params
    params.require(:lot).permit(
      :name,
      :description,
      :start_price,
      :bet_step,
      :finish_date,
      :category_id,
      :image
    )
  end
end
