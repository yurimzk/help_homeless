class CommentsController < ApplicationController
  before_action :set_post, only: %i[create update destroy]
  before_action :set_comment, only: %i[update destroy]

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.post = @post
    if @comment.save
      redirect_to comment_path(@comment)
    else
      render "events/show", status: unprocessable_entity
    end
  end

  def update
    @comment.content = params[:content]
    @comment.post_id = @post
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to comment_path(@comment)
    else
      render "events/show", status: unprocessable_entity
    end
  end

  def destroy
    @comment.destroy
    redirect_to post_path(@post)
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def set_post
    @post = Post.find(params[:post_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
