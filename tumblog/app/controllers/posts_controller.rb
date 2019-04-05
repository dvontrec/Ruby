class PostsController < ApplicationController
  # users can only access index and show if not authenticated
  before_action :authenticate_user!, except: [:index, :show]

  def index
    # index will display all posts in descending order
    @posts = Post.all.order('created_at DESC')
  end
  # new method (has view)
  def new
    @post = Post.new
  end
  # functionality for creating new post
  def create
    @post = Post.new(post_params)

    # if the post doesnt save render new
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end
  # show view
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(params[:post].permit(:title, :body))
      redirect_to @post
    else
      render "edit"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end

    def findPost

    end
end
