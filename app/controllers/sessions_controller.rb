class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user.password == params[:password]
      session[:user] = params[:email]
      redirect_to root_url, notice: "Thanks for signing in, #{params[:email]}"
    end
  end

  def destroy
    session[:user] = nil
    redirect_to root_url
  end
end
