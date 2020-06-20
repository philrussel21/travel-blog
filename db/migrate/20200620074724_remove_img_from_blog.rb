class RemoveImgFromBlog < ActiveRecord::Migration[6.0]
  def change
    remove_column :blogs, :img, :string
  end
end
