class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render json: { success: "all okay" }
    else
      render :new
    end
  end

  private
    def post_params
      params.require(:post).permit(:title, :description)
    end

end
