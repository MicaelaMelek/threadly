class PostsController < ApplicationController
  def index
    @new_post = Post.new
    @all_post = Post.order(created_at: :desc).all
  end

  def create
    @post = Post.new(params.require(:post).permit(:comment))
    if @post.save
       redirect_to root_path
     end
  end

end
