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
    @edit_blog = Blog.find(params[:id])
  end

  def update
    @edit_blog = Blog.find(params[:id])

    if @edit_blog.update(blog_params)
      redirect_to(blog_path(@edit_blog))
    else
      render 'edit'
    end
  end

  def destroy
  end

  private
    def blog_params
      params.require(:blog).permit(:title, :location, :country, :budget, :activity, :content)
    end
end
