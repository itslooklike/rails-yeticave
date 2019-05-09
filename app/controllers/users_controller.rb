class UsersController < ApplicationController
  before_action :fetch_categories, only: [:new, :create, :login]

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params

    if @user.save
      # session[:user_id] = @user.id
      # redirect_to '/'
      redirect_to '/login'
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :password, :image, :contact)
  end

  def fetch_categories
    @categories = Category.all
  end
end
