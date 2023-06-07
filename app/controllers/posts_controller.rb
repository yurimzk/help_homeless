class PostsController < ApplicationController
  before_action :set_post, only: %i[update destroy]
  before_action :set_event, only: %i[create update destroy]

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.event_id = @event.id
    if @post.save
      redirect_to event_path(@event)
    else
      render "events/show", status: unprocessable_entity
    end
  end

  def update
    @post.content = params[:content]
    @post.event_id = @event
    @post.user_id = current_user.id
    if @post.save
      redirect_to post_path(@post)
    else
      render "events/show", status: unprocessable_entity
    end
  end

  def destroy
    @post.destroy
    redirect_to event_path(@event)
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def set_event
    @event = Event.find(params[:event_id])
  end

  def post_params
    params.require(:post).permit(:content)
  end
end
