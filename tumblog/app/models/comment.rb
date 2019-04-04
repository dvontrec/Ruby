class Comment < ApplicationRecord
  belongs_to :post
  def create
    # finds the post
    @post = Post.find(params[:post_id])
    # creates a new comment on the post
    @comment = @post.comments.create(params[:comment].permit(:name, :body))

    # once the comment is created redirect to post
    redirect_to post_path(@post)
  end


end
