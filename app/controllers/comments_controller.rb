class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: [:new, :create]
  before_action :set_comments, only: [:new, :create]

  def new
    @comment = Comment.new
    render :new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to new_comment_path(params[:post_id]), notice: 'コメントしました'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def set_comments
    @comments = Comment.where(post_id: params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:content).merge(post_id: params[:post_id])
  end
end
