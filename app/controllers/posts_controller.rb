class PostsController < ApplicationController
	before_filter :authenticate_user!

	def index
		
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new()
	end

	def create
		@post = Post.create(post_params)
		if @post.valid?
      flash[:success] = "Your post was saved!" 
      redirect_to post_path(@post)
    else
      flash[:error] = "Your post could not be saved. please try again."
      render "new"
    end
	end

	def post_params
		puts "params.post: #{params[:post]}"
		puts "*"*50
	  params.require(:post).permit(:image, :title)
	end
end
