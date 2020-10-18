class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:is_admin] = user.is_admin
      redirect_to root_url, notice: "Logged in!"
    else
      redirect_to login_path, alert: "Email or password is invalid"
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
