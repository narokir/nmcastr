class CastingcallsController < ApplicationController
  
  before_action :authenticate_user!, except:[:index, :show ]
  
  def index
    @castingcalls = Castingcall.all
  end
  
  def show
    @user = current_user
    @castingcall = Castingcall.find(params[:id])
  end

  def new
    @user = User.find(current_user.id)
    @castingcall = @user.castingcalls.new
  end
  
  def edit
    # @castingcall = Castingcall.find(current_user)
    @castingcall = Castingcall.find(params[:id])
  end

  def create
    @user = current_user
    # @castingcall = Castingcall.create(castingcall_params)
    @castingcall = @user.castingcalls.create(castingcall_params)
    
    if @castingcall.save
      flash[:success] = "Success!<strong> #{@castingcall.title}</strong> has been created!" 
      redirect_to @castingcall
    else
      render 'new'
    end
  end

  def update
    @castingcall = Castingcall.find(params[:id])
    
    if @castingcall.update(castingcall_params)
      flash[:success] = "Success! <strong>#{@castingcall.title}</strong> has been Updated"
      redirect_to @castingcall
    else
      render 'edit'
    end
  end

  def destroy
    @castingcall = Castingcall.find(params[:id])
    
    @castingcall.destroy
    flash[:success] = "Success! <strong>#{@castingcall.title}</strong> has been Deleted"
    redirect_to castingcalls_path
  end
  
  private
  def castingcall_params
    params.require(:castingcall).permit(:title, :description, :user_id, :main_image)
  end

end
