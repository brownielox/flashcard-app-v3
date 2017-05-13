class SessionsController < ApplicationController

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

  def new
    @user = User.new
    @users = User.all
  end

  def create
    user = User.find_by(name: params[:user][:username])
    if user.try(:authenticate, params[:user][:password])
      session[:user_id] = user.id
      redirect_to cards_new_path
    else
      redirect_to login_path
    end
  end

end
