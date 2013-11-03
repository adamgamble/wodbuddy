class PagesController < ApplicationController
  before_filter :authenticate_user!, :only => :user_home
  before_filter :handle_gym_creation, :only => :user_home

  def index
  end

  def user_home
    @wod = Wod.new
  end

  private
  def handle_gym_creation
    redirect_to new_gym_path unless current_user.gym
  end
end
