class GymsController < ApplicationController
  def new
    @gym = Gym.new
  end

  def create
    @gym = Gym.new(gym_params)
    if @gym.save
      current_user.update_attribute(:gym_id, @gym.id)
      redirect_to home_path, notice: "Gym Created!"
    else
      render action: :new, error: "There were some problems with your input"
    end
  end

  private
  def gym_params
    params.require(:gym).permit(:name, :location)
  end
end
