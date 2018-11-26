class PostsController < ApplicationController
	before_action :authenticate_user!
  	before_action :find_post, only: [:show, :edit, :update, :destroy]
  def index
  end
  def create
  	@post = current_user.posts.build(post_params)
  	if @post.save
  		redirect_to root_path
  	end
  	else
      render 'new'
  	end
  	def new
  		@post = Post.new
  		else
      render 'new'
  	end
  	end
  	def show
  	end
  	def edit
  	end
  	def update
  		@post.update(post_params)
     if @post.save
     	redirect_to root_path(@post.id)
     end
  	end
  	def destroy
  		@post.destroy
    redirect_to root_path
  	end
  	def find_post
  	@post = Post.find_by(id: params[:id])
  end
  	private
  	def post_params
  		params.require(:post).permit(:nickname, :age)
  	end
end
