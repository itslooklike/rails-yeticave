class BetsController < ApplicationController
  def create
    p '✅'
    p params
    p '🛑'
  end

  private

  def bet_params
    params.require(:bet).permit(:sum)
  end
end
