class BetsController < ApplicationController
  def create
    @lot = Lot.find params[:id]
    @bet = Bet.new bet_params

    if @bet.save
      redirect_to lot_url(@lot)
    else
      @categories = Category.all
      @total_price = Bet.where(lot_id: params[:id]).sum(:sum) + @lot.start_price
      # redirect_to lot_url(@lot)
      render 'lots/show'
    end
  end

  private

  def bet_params
    bet_p = params.require(:bet).permit(:sum)
    lot_p = params.require(:id)
    hash_p = { lot_id: lot_p, user_id: @current_user.id, sum: bet_p[:sum] }
    hash_p
  end
end
