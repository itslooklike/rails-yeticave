class BetsController < ApplicationController
  def create
    # достать лот ид, и юзера
    @bet = User.new(bet_params, user_id: @current_user.id)

    if @bet.save
      redirect_to @lot
    else
      render 'new'
    end
  end

  private

  def bet_params
    params.require(:bet).permit(:summ)
  end
end
