class CastingcallsController < ApplicationController
  def index
    @castingcalls = Castingcall.all
  end
  
  def show
    @castingcall = Castingcall.find(params[:id])
  end

  def new
    @castingcall = Castingcall.new
  end
  
  def edit
    @castingcall = Castingcall.find(params[:id])
  end

  def create
    # render plain: params[:castingcall].inspect
    @castingcall = Castingcall.new(castingcall_params)
    
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
    params.require(:castingcall).permit(:title, :description)
  end
end
