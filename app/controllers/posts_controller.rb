class PostsController < ApplicationController
  def index
    @posts = Post.includes(:comments, :author).joins(:author).where(author: { id: params[:user_id] })
    @user = User.find(params[:user_id])
  end

  def show
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    post_params = params.require(:post).permit(:title, :text)
    @post = Post.new(title: post_params[:title], text: post_params[:text], comments_counter: 0, likes_counter: 0,
                     author_id: current_user.id)

    respond_to do |format|
      format.html do
        if @post.save
          flash[:success] = 'Post saved successfully'
          redirect_to user_posts_path(current_user.id)
        else
          flash[:error] = 'Post could not be saved'
          render :new, locals: { post: @post }
        end
      end
    end
  end
end
