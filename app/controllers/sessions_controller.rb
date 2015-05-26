class SessionsController < ApplicationController
  
  def new
  end

  def create
  if login(params[:email], params[:password])
      flash[:success] = "Welcome back!"
      redirect_to root_path
    else
      flash.now[:warning] = "E-mail and/or password are incorrect."
      render 'new'
    end
  end

  def destroy
    logout
    flash[:success] = "You have been logged out."
    redirect_to log_in_path
  end
end
