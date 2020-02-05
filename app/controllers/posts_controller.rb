class PostsController < ApplicationController
  def new
    @post = Post.new
    @bloggers = Blogger.all
    @destinations = Destination.all
  end

  def edit
  end

  def create
    @post = Post.create(post_params)
    redirect_to post_path(@post)
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
  end

  def delete
  end

  def like 
    @post = Post.find(params[:id])
    @post.likes += 1
    @post.save
    redirect_to post_path(@post)
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :blogger_id, :destination_id)
  end
end
