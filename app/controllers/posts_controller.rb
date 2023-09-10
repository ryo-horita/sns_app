class PostsController < ApplicationController
  before_action :authenticate_user!

  # このActionを編集してください
  def index
    @title = params[:title]
    if @title.present?
      @posts = Post.where('title LIKE ?', "%#{@title}%")
    else
      @posts = Post.all
    end
    render :index
  end
  # ここまで

  # 以下既存コード
end