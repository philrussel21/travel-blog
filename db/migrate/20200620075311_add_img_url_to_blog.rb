class AddImgUrlToBlog < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :img_url, :string, null: false
  end
end
