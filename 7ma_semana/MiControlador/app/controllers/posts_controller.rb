# Los controladores se crean en plural, lo modelos en singular
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

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(post_params)
      redirect_to :action => :show, :id => @post.id
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to :action => :index
  end

  private
  def post_params
    # Recibe el modelo
    params.require(:post).permit(:title, :text)
  end
end
