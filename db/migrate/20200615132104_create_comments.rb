class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.belongs_to :blog
      t.string :name
      t.string :content

      t.timestamps
    end
  end
end
