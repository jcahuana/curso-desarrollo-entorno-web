class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    # Post es el modelo
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to :action => :show, :id => @post.id
    else
      render :new
    end
  end

  private
  def post_params
    # Recibe el modelo
    params.require(:post).permit(:title, :text)
  end
end
