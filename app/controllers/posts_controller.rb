class PostsController < ApplicationController
  def index
    @posts = Post.joins(:author).where(author: { id: params[:user_id] })
    @user = User.find(params[:user_id])
  end

  def show
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:id])
  end
end
