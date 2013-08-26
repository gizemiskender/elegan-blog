class PostsController < ApplicationController
  def index
    @posts = Post.all

  end

  def show
    @post = Post.find(params[:id])
    @category = Category.find(@post.category_id)
  end

  def new
    @post = Post.new
    @categories = Category.all
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(params[:post].permit(:title, :body, :author))
      redirect_to @post
    else
      render 'edit'
    end

  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  def create

    @post = Post.new(params[:post].permit(:title, :body, :author, :category_id))

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end
end
