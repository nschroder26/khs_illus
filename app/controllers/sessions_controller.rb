class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      reset_session
      log_in user
      redirect_to gallery_url
    else
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
