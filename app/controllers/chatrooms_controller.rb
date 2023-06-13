class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @friend = Friend.find(@chatroom.friend_id)
    @message = Message.new
  end
end
