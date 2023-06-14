class UsersController < ApplicationController
  before_action :set_user, only: %i[edit show]

  def home
    @events_home = []
    @events_days = []
    @participants = Participant.where(user_id: current_user)
    @participants.each do |participant|
      @events_home << Event.find(participant.event_id)
    end
    @events_location = Event.near([current_user.latitude, current_user.longitude], 200).limit(5)
  end

  def show
    @friends = Friend.all
    @friend = Friend.new
  end

  def landing
  end

  def edit
    @user = User.new
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :avatar, :address)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
