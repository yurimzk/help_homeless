class FriendsController < ApplicationController
  def index
    @friends = Friends.all
  end

  def create
    @asker_id = current_user
    @receiver_id = User.find(friend_params[:receiver_id].to_i) ###### TESTAR ######
    @friend = Friend.new!(asker: @asker_id, receiver: @receiver_id)
  end

  private

  def friend_params
    params.require(:friend).permit(:first_name, :last_name, :receiver_id)
  end
  ################################ DEIXAR PRA DEPOIS ###################################
  # def destroy
  #   if receiver_id == current_user
  #     @friend = Friend.where(receiver_id: current_user)
  #   else
  #     @friend = Friend.where(asker_id: current_user)
  #   end
  #   @friend.destroy
  # end
end
