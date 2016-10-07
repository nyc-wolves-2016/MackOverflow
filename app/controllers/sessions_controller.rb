class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else
      @errors = ["Invalid Username or Password."]
      render 'new'
    end
  end

  def destroy
    session.clear
    redirect_to '/'
  end

  private
    def session_params
      params.require(:user).permit(:username, :password)
    end
end
