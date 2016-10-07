class UsersController < ApplicationController
  before_action :require_user, only: [:edit, :update, :delete]

  def index
  end

  def new
    @user = User.new
  end

  def create
    binding.pry
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      render 'new'
    end
  end

  def show

  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end



end
