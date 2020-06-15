class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :location
      t.string :country
      t.integer :budget
      t.string :activity
      t.string :content

      t.timestamps
    end
  end
end
