class CommentsController < ApplicationController
  def create
    @blog = Blog.find(params[:blog_id])

    #adds the newly created comment into the blog.comments array
    @comment = @blog.comments.create(comment_params)

    redirect_to blog_path(@blog)
  end

  def destroy
    @blog = Blog.find(params[:blog_id])
    @delete_comment = @blog.comments.find(params[:id])
    @delete_comment.destroy
    redirect_to blog_path(@blog)
  end

  private
    def comment_params
      params.require(:comment).permit(:name, :content)
    end
end