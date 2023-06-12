class UsersController < ApplicationController
  before_action :set_user, only: %i[edit show]

  def home
    @events_home = []
    @events_days = []
    @participants = Participant.where(user_id: current_user)
    @participants.each do |participant|
      @events_home << Event.find(participant.event_id)
    end
  end

  def show
    @user_friend = User.find_by(email: params[:email])
    if Invitation.reacted?(current_user, @user_friend)
      send_invitation(@user_friend)
    end
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
