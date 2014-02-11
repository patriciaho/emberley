class UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.save
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticated?(params[:user][:password]) 
            session[:user_id] = @user.id
            redirect_to images_path
        end
      else
        redirect_to images_path
        flash[:error] = "Username already exists"
      end
  end

  def login
    @user = User.find(params[:username])
    if @user.authenticate? == true
      redirect_to images_path
    else
      redirect_to images_path
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:first, :last, :username, :password)
  end


end
