class UsersController < ApplicationController
  before_action :authenticate_user! #, except: [:index, :show]

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

  # def create
  #   @user = User.new(user_params)

  #   if @user.save
  #     flash[:success] = "User has been saved"
  #     redirect_to @user
  #   else
  #     render 'new'
  #   end
  # end

  def update
    @user = User.find(user_params)

    @user.update(user_params)
    flash[:success] = "User has been updated"
    redirect_to @user
  end

  def destroy
    @user = User.find(current_user.id)

    @user.destroy
    flash[:success] = "User has been Destroyed"
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :id)
  end
end
