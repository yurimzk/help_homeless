class FriendsController < ApplicationController
  def index
    @friends = Friends.all
  end

  def create
    @asker_id = current_user
    @receiver_id = User.where(first_name: params[:content], last_name: params[]) ###### TESTAR ######
    Friend.create(asker_id: @asker_id, receiver_id: @receiver_id)
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
