class PostsController < ApplicationController
  def index
  end
  # new method (has view)
  def new
  end
  # functionality for creating new post
  def create
    @post = Post.new(post_params)
    @post.save

    redirect_to @post
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
