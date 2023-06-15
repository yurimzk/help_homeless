class FriendsController < ApplicationController
  def index
    @friends = Friend.all
    @user = current_user
  end

  def create
    @asker_id = current_user
    @receiver_id = User.find(params[:user_id].to_i)
    @friend = Friend.new(asker: @asker_id, receiver: @receiver_id)
    if Friend.reacted?(@friend.asker_id, @friend.receiver_id) == false && Friend.confirmed_record?(@friend.asker_id, @friend.receiver_id) == false
      @friend.save
      Chatroom.create(friend_id: @friend.id)
      flash.alert = "Invitation sent!"
    elsif @friend.valid? == false && Friend.confirmed_record?(@friend.asker_id, @friend.receiver_id) == false
      flash.alert = "There is an invitation already sent!"
    else
      flash.alert = "You are already a friend!"
    end
    redirect_to user_path(params[:user_id])
  end

  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy
    redirect_to user_friends_path(current_user)
  end

  def update
    @user = User.find(params[:user_id])
    @friend = Friend.find(params[:id])
    @friend.confirmed = true
    @friend.save
    redirect_to user_friends_path(current_user)
  end

  private

  def friend_params
    params.require(:friend).permit(:first_name, :last_name, :receiver_id)
  end
  ################################ DEIXAR PRA DEPOIS ###################################
end
