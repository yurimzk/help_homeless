class PostsController < ApplicationController
  def create
  @event = Event.find(params[:id])
  @post = Post.new(post_params)
  @post.user_id = current_user.user_id
  @post.event_id = @event.id
    if @post.save
      redirect_to post_path()
    else
      render events/show, status: unprocessable_entity
    end
  end

  def update

  end

  def destroy

  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
