class PostsController < ApplicationController
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

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
