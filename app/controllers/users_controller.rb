class UsersController < ApplicationController

  def index
    @user=User.all
    @search = User.search(params[:q])
    @users = @search.result.order(:title).paginate(page: params[:page])
  end

  def new
    @user = User.new

  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render 'new'
    end
  end


  def show
    @user = User.find(params[:id])

    @projects = Project.where(user_id: @user.id)
    # if params[:longitude] && params[:latitude]
    #   @projects
  
    #   respond_to do |format|
    #     format.html
    #     format.js

  end

  def notification
    @user = current_user
  end

private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :avatar)
  end

end
