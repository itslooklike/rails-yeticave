class UsersController < ApplicationController
  def new
    @categories = Category.all
    @user = User.new
  end

  def create

  end

  def login
    @categories = Category.all
  end
end
