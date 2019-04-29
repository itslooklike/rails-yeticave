class BetsController < ApplicationController
  def create
    @bet = Bet.new bet_params
    @bet.user = current_user

    if @bet.save
      redirect_to lot_url(@bet.lot)
    else
      @categories = Category.all
      @lot = @bet.lot
      @total_price = Bet.where(lot_id: params[:lot_id]).sum(:sum) + @lot.start_price

      render 'lots/show'
    end
  end

  private

  def bet_params
    params.require(:bet).permit(:sum, :lot_id)
  end
end
