class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.text :body
      t.string :author
      t.timestamps
    end
    add_column :users, :admin, :boolean
  end
end
