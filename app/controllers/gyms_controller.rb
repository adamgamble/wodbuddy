class GymsController < ApplicationController
  def index
    @gyms = current_user.gyms
  end

  def new
    @gym = Gym.new
  end

  def create
    @gym = Gym.new(gym_params)
    if @gym.save
      current_user.gyms << @gym
      redirect_to home_path, notice: "Gym Created!"
    else
      render action: :new, error: "There were some problems with your input"
    end
  end

  def poster
    @gym = current_user.gyms.first
    render :layout => false
  end

  private
  def gym_params
    params.require(:gym).permit(:name, :location)
  end
end
