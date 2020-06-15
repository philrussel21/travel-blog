class BlogsController < ApplicationController
  def index
    @blogs = Blog.order("created_at DESC")
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
