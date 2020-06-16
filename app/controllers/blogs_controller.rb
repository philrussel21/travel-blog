class BlogsController < ApplicationController
  def index
    @blogs = Blog.order("created_at DESC")
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @new_blog = Blog.new()
  end

  def create
    @new_blog = Blog.new(blog_params)

    if @new_blog.save
      redirect_to(root_path)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def blog_params
      params.require(:blog).permit(:title, :location, :country, :budget, :activity, :content)
    end
end
