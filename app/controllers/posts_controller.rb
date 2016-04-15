class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def index
    @posts = Post.all 
  end

  def destroy
  end

  def update
  end

  def create 
    @post = Post.new(post_params)

    if @post.save 
      redirect_to @post 
    else 
      render 'new'
    end 
  end 

  def show
  end

  private 

  def post_params
    params.require(:post).permit(:title, :body)
  end 
end
