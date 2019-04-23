class UsersController < ApplicationController
  before_action :fetch_categories, only: [:new, :create, :login, :sign_in]

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params

    if User.exists?(email: @user.email)
      @user.errors.add(:email, "Такой пользователь уже зарегистрирован")
      render :new
      return
    end

    avatar = params[:user][:avatar_url]
    @user.avatar_url = Uploader.upload(avatar) if avatar

    if @user.save
      redirect_to action: "login"
    else
      render :new
    end
  end

  def login
    @user = User.new
  end

  def sign_in
    @user = User.new params.require(:user).permit(:email, :password)
    current_user = User.where("email = ?", @user.email).first

    if current_user.nil? || current_user.password != @user.password
      @user.errors.add(:email, "Неверные данные")
      @user.errors.add(:password, "Неверные данные")
      render :login
    else
      p 'успех'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :password, :avatar_url, :contact)
  end

  def fetch_categories
    @categories = Category.all
  end
end
