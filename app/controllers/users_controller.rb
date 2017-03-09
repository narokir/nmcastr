class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      flash[:success] = "User has been saved"
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
    @user = User.find(params[:id])
    
    @user.update(user_params)
    flash[:success] = "User has been updated"
    redirect_to @user
  end

  def destroy
    @user = User.find(params[:id])
    
    @user.destroy
    flash[:success] = "User has been Destroyed"
    redirect_to users_path
  end
  
  private
    def user_params
      params.require(:user).permit(:name, :email)
    end
end
