class SessionsController < ApplicationController

  def new
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

  def destroy
    session.clear :user_id
    redirect_to login_path
  end
end
