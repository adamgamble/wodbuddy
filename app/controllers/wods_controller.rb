class WodsController < ApplicationController

  def create
    @wod = current_user.gym.wods.new(wod_params)
    if @wod.save
      flash[:notice] = "WOD Created"
      redirect_to home_path
    else
      flash[:error] = "There were some problems with your WOD"
      render :action => :new
    end
  end

  def wod_params
    params.require(:wod).permit(:name, :body)
  end
end
