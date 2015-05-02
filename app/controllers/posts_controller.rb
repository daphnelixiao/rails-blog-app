class PostsController < ApplicationController
#   before_filter:authenticate_user!, :except =>
  def index
    @posts = Post.all
  end
  
  def show
    @post=Post.find_by_id(params[:id])
  end
  
  def new
    @post=Post.new
    render :new
  end
  
  def create
    @post = Post.create(post_params)
    
    if @post.valid?
      redirect_to post_path(@post)
    else
      render :new
    end
  end
  
  
  private
  def post_params
    params.require(:post).permit(:title,:body)
  end
  
  
end
