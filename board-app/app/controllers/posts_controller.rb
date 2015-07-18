class PostsController < ApplicationController

  def index
  	@posts = Post.paginate(order: 'created_at DESC', page: params[:page], per_page: 10)
    @post = Post.new
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params)
  	if @post.save
  	  redirect_to posts_path
    else
      @posts = Post.paginate(order: 'created_at DESC', page: params[:page], per_page: 10)
      render 'index'
    end
  end

  private

  	def post_params
  		params[:post].permit(:username, :email, :comment)
  	end

end
